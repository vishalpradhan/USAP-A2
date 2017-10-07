class user::configurecheck{
	augeas{'agent.puppet.conf.agent.runinterval':
	context => "/etc/puppetlabs/puppet/puppet.conf/agent",
	changes => ["set runinterval=1200s"],
	#require => File['puppet.conf'],
	}

	augeas{ 'runlevel':
	context => "/files/etc/inittab",
	changes => [ "set id/runlevel 3",],
	}
}
