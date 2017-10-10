class user::configurecheck{
	augeas{'agent_runinterval':
	context => "/etc/puppetlabs/puppet/puppet.conf/agent",
	changes => ["set runinterval 1200s"],
	}

	#augeas{ 'runlevel':
	#context => "/etc/inittab",
	#changes => [ "set id/runlevels 3",],
	#}

	exec{ 'runlevel':
	command => '/usr/bin/systemctl set-default multi-user.target',
	}
}
