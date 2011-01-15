module OrientDB
  module SQL
    class Expression

    end

    class Query

      attr_accessor :projections, :targets, :conditions, :order, :limit, :lower_range, :upper_range, :plan

      def initialize
        @projections = []
        @targets     = []
        @conditions  = []
        @order       = []
        @limit       = nil
        @lower_range = nil
        @upper_range = nil
        @plan        = nil
      end

      def select(*args)
        args.each do |arg|
          case arg
            when OrientDB::SQL::Expression
              projections << arg.to_s
            when String, Symbol, Integer
              arg = select_single_string(arg)
              projections << arg
            when Hash
              arg.each { |k, v| projections << "#{k} AS #{v}" }
            when Array
              if arg.size == 2
                projections << "#{arg.first} AS #{arg.last}"
              else
                arg.each { |x| projections << select_single_string(x) }
              end
          end
        end
        self
      end

      alias :columns :select

      def from(*args)
        args.each { |x| targets << x.to_s }
        self
      end

      def where(*args)
        args.each do |arg|
          case arg
            when Hash
              arg.each { |k, v| conditions << "#{k} #{operator_for(v)} #{quote(v)}" }
            when Array
              case arg.size
                when 3
                  conditions << "#{arg[0]} #{arg[1]} #{quote(arg[2])}"
                when 2
                  conditions << "#{arg[0]} #{operator_for(arg[1])} #{quote(arg[1])}"
                else
                  arg.each { |x| conditions << x.to_s }
              end
            else
              conditions << arg.to_s
          end
        end
        self
      end

      def to_s
        select_sql + target_sql + conditions_sql + order_sql + limit_sql + range_sql
      end

      def to_sql_synch_query
        OrientDB::SQLSynchQuery.new to_s
      end

      private

      def select_sql
        str = projections.empty? ? '' : projections.map { |x| x.to_s }.join(', ') + ' '
        "SELECT #{str}"
      end

      def target_sql
        case targets.size
          when 0
            "FROM "
          when 1
            "FROM #{targets.first} "
          else
            "FROM [#{targets.map{|x| x.to_s}.join(", ")}] "
        end
      end

      def conditions_sql
        conditions.empty? ? '' : "WHERE #{conditions.map { |x| x.to_s }.join(', ')} "
      end

      def order_sql
        order.empty? ? '' : "ORDER BY #{order.map { |x| x.to_s }.join(', ')} "
      end

      def limit_sql
        limit.nil? ? '' : "LIMIT #{limit} "
      end

      def range_sql
        lower_range.nil? ? '' : "RANGE #{lower_range}#{upper_range ? ", #{upper_range}" : ''} "
      end

      def select_single_string(arg)
        arg.to_s.split('___').join(' AS ').split('__').join('.')
      end

      def operator_for(value)
        case value
          when Array
            "IN"
          else
            "="
        end
      end

      def quote(value)
        case value
          when Integer, Float, Symbol, OrientDB::SQL::Expression
            value.to_s
          when String
            "'#{value}'"
          when Array
            "[" + value.map { |x| quote(x) }.join(", ") + "]"
        end
      end

    end
  end
end