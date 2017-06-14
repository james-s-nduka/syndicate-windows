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
	puts 'Kitchen converge of VM'
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
	sh 'echo HELLO'
	sh 'kitchen destroy'
end

desc 'Deploy cookbook'
task :deploy do
	puts 'Upload of new cookbook'
	sh "knife cookbook upload #{cookbook}"
end

