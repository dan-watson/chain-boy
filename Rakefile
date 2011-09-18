#!/usr/bin/env rake
require "bundler/gem_tasks"

namespace :ganymede do
  desc "Ganymede CI task"
  task :build do 
    exec("ruby #{Dir.pwd}/test/dynamic_delegator_tests.rb")
  end
end
