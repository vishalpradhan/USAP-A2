class user::configurecheck{
	augeas{'agent_runinterval':
	context => "/etc/puppetlabs/puppet/puppet.conf/agent",
	changes => ["set runinterval 1200s"],
	#require => File['puppet.conf'],
	}

	augeas{ 'runlevel':
	context => "/etc/inittab",
	changes => [ "set id/runlevels 3",],
	}
}
