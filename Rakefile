cookbook = ENV['COOKBOOK']

desc 'Rubocop of new code'
task :rubocop do
  puts 'Running Rubocop tests'
  sh 'rubocop .'
end

desc 'Foodcritic of new code'
task :foodcritic do
  puts 'Running Foodcritic...'
  sh 'foodcritic . -f any'
end

desc 'Build VM with Cookbook'
task :build do
  puts 'Attempting to converge the Kitchen VM with Windows cookbook'
  sh 'kitchen converge'
end

desc 'Run Inspec tests'
task :test do
  puts 'Run Inspec tests'
  sh 'kitchen verify'
end

desc 'Run Idempotence tests'
task :idempotency do
  puts 'Running idempotency'
  puts 'Finished Testing. Now destroying'
  sh 'kitchen destroy'
end

desc 'Deploy cookbook'
task :deploy do
  puts "Upload of #{cookbook} cookbook"
  sh "knife cookbook upload #{cookbook}"
end
