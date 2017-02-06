require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'
require 'serverspec'


task :default => [:features]

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "features --format json --guess -o cubumber.out"
end
