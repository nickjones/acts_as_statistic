require 'rubygems'
require 'rake'
require 'rake/testtask'
require 'rcov/rcovtask'
require 'rake/rdoctask'
require 'bundler/setup'
require 'rspec/core/rake_task'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |g|
    g.name = 'acts_as_statistic'
    g.summary = %{Log statistics on Rails models and controllers.}
    g.description = %{Log statistics on Rails models and controllers.}
    g.email = %w(darellik@gmail.com)
    g.homepage = 'https://github.com/nickjones/acts_as_statistic'
    g.authors = %w(nickjones)
    g.add_dependency 'activerecord', '>=2.1.0'
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts 'Jeweler (or a dependency) is not available.  Install it with sudo gem install jeweler'
end

desc 'Generate documentation for the acts_as_statistic plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'ActsAsStatistic'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

desc 'Run the specs'
RSpec::Core::RakeTake.new do |r|
  r.verbose = false
end

task :default => :spec
