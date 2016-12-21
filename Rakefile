require 'rake/testtask'
require_relative "fizz_buzz"

Rake::TestTask.new do |t|
  t.test_files = FileList['test/*.rb']
end

task :default => :test

task :run do
  f = FizzBuzz.new
  puts f.to_s
end
