raise "OrieentDB-client only runs on JRuby. Sorry!" unless (RUBY_PLATFORM =~ /java/)

module OrientDB
  GEM_PATH = File.dirname File.expand_path(__FILE__) unless const_defined?(:GEM_PATH)
end

$: << OrientDB::GEM_PATH
$: << File.join(OrientDB::GEM_PATH, 'jars')

require 'java'
require "orient-commons-1.4.1"
require "orientdb-client-1.4.1"
require "orientdb-enterprise-1.4.1"
require "blueprints-core-2.2.0-SNAPSHOT"
require "blueprints-orient-graph-2.2.0-SNAPSHOT"
require "pipes-2.4.0-SNAPSHOT"

require 'orientdb/version'
require 'orientdb/ext'
require 'orientdb/rid'
require 'orientdb/constants'
require 'orientdb/property'
require 'orientdb/schema'
require 'orientdb/storage'
require 'orientdb/database'
require 'orientdb/record'
require 'orientdb/document'
require 'orientdb/sql'
require 'orientdb/oclass'
