node('master'){
	env.GEM_PATH = '/opt/chefdk/embedded/bin/gem'
	env.GEM_ROOT = '/usr/local/share/ruby/gems/2.0/gems/:/opt/chefdk/embedded/lib/ruby/gems/2.3.0/'
	env.KITCHEN_YAML= '.kitchen-ec2.yml'

	stage 'Workspace'
  	// Start with fresh workspace
    deleteDir()

	stage 'Checkout'
	// Get our code from the GitHub repository
	git url: 'git@synwin-windows:james-s-nduka/syndicate-windows.git'

	stage 'Rubocop'
	//Linting
	sh  '/opt/chefdk/embedded/bin/rake rubocop'

	stage 'Foodcritic'
	//Linting
	sh '/opt/chefdk/embedded/bin/rake foodcritic'

	stage 'Kitchen Build'
	//Spin up VM and converge
	sh '/opt/chefdk/embedded/bin/rake build'

	stage 'Verify'
	sh '/opt/chefdk/embedded/bin/rake test'

	stage 'Idempotency'
	sh '/opt/chefdk/embedded/bin/rake idempotency'

	stage 'Deploy'
	sh '/opt/chefdk/embedded/bin/rakes COOKBOOK=syndicate-windows deploy'
}