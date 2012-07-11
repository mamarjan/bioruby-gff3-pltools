# encoding: utf-8

require 'rake/clean'

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "bio-gff3-pltools"
  gem.homepage = "http://mamarjan.github.com/gff3-pltools/"
  gem.license = "MIT"
  gem.summary = %Q{Ruby wrapper for the gff3-pltools.}
  gem.description = %Q{Ruby wrapper for the gff3-pltools.}
  gem.email = "marian.povolny@gmail.com"
  gem.authors = ["Marjan Povolni"]
  gem.files.clear
  gem.files.include 'lib/**/**.rb'
  gem.files.include 'VERSION'
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'cucumber/rake/task'
Cucumber::Rake::Task.new(:features)

task :default => :unittests

require 'yard'
YARD::Rake::YardocTask.new
CLEAN.include("doc")
CLEAN.include(".yardoc")

