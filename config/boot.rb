# Set up gems listed in the Gemfile.
#ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)
GEMFILE_PATH = File.expand_path('../../Gemfile', __FILE__)
if File.exist?(GEMFILE_PATH)
  # Force the rails 3 application to use its Gemfile
  ENV['BUNDLE_GEMFILE'] = GEMFILE_PATH
  require 'bundler'
  Bundler.setup
end

require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])
require 'rubygems'
