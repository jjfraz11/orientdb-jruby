# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "orientdb"
  s.version = "1.6.0"
  s.platform = "java"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Adrian Madrid", "Jonathan Frazier"]
  s.date = "2013-11-22"
  s.description = "Simple JRuby wrapper for the OrientDB."
  s.email = "aemadrid@gmail.com"
  s.executables = ["orientdb_console"]
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE",
    "README.rdoc",
    "Rakefile",
    "bin/orientdb_console",
    "lib/jars/commons-configuration-1.6.jar",
    "lib/jars/blueprints-core-2.5.0-SNAPSHOT.jar",
    "lib/jars/blueprints-orient-graph-2.5.0-SNAPSHOT.jar",
    "lib/jars/orient-commons-1.6.jar",
    "lib/jars/orientdb-client-1.6.jar",
    "lib/jars/orientdb-core-1.6.jar",
    "lib/jars/orientdb-distributed-1.6.jar",
    "lib/jars/orientdb-enterprise-1.6.jar",
    "lib/jars/orientdb-graphdb-1.6.jar",
    "lib/jars/orientdb-nativeos-1.6.jar",
    "lib/jars/orientdb-object-1.6.jar",
    "lib/jars/orientdb-server-1.6.jar",
    "lib/jars/orientdb-tools-1.6.jar",
    "lib/jars/pipes-2.5.0-SNAPSHOT.jar",
    "lib/jars/gremlin-java-2.5.0-SNAPSHOT.jar",
    "lib/orientdb.rb",
    "lib/orientdb/constants.rb",
    "lib/orientdb/database.rb",
    "lib/orientdb/document.rb",
    "lib/orientdb/ext.rb",
    "lib/orientdb/oclass.rb",
    "lib/orientdb/property.rb",
    "lib/orientdb/record.rb",
    "lib/orientdb/rid.rb",
    "lib/orientdb/schema.rb",
    "lib/orientdb/sql.rb",
    "lib/orientdb/sql/common.rb",
    "lib/orientdb/sql/delete.rb",
    "lib/orientdb/sql/ext.rb",
    "lib/orientdb/sql/insert.rb",
    "lib/orientdb/sql/query.rb",
    "lib/orientdb/sql/update.rb",
    "lib/orientdb/storage.rb",
    "lib/orientdb/version.rb",
    "orientdb.gemspec",
    "spec/database_spec.rb",
    "spec/document_spec.rb",
    "spec/graph_spec.rb",
    "spec/orientdb_spec.rb",
    "spec/spec.opts",
    "spec/spec_basic_helper.rb",
    "spec/spec_helper.rb",
    "spec/sql_spec.rb",
    "spec/tinkerpop_graph_spec.rb"
  ]
  s.homepage = "http://github.com/aemadrid/orientdb-jruby"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "Simple JRuby wrapper for the OrientDB."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["~> 2.4"])
      s.add_development_dependency(%q<awesome_print>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.3"])
      s.add_development_dependency(%q<pry>, ["~> 0.9.12"])
    else
      s.add_dependency(%q<rspec>, ["~> 2.4"])
      s.add_dependency(%q<awesome_print>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.3"])
      s.add_dependency(%q<pry>, ["~> 0.9.12"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 2.4"])
    s.add_dependency(%q<awesome_print>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.3"])
    s.add_dependency(%q<pry>, ["~> 0.9.12"])
  end
end

