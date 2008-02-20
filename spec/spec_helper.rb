begin
  require 'spec'
rescue LoadError
  require 'rubygems'
  require 'spec'
end

dir = File.dirname(__FILE__)
lib_path = File.expand_path("#{dir}/../lib")
$LOAD_PATH.unshift lib_path unless $LOAD_PATH.include?(lib_path)

require 'git_rails'

require "logger"
require "fileutils"

$logger = Logger.new($stderr)
$logger.level = Logger::INFO unless $DEBUG

module EAN
  module SpecHelpers
    def logger
      $logger
    end
  end
end