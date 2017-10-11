class openssh{
	#Service required to run sshd
	service { 'sshd' :
	ensure => running,
	enable => true,
	require => Package['openssh-server'],
	}

	#configuration to overwrite default sshd configuration with custom one
	file{ '/etc/ssh/sshd_config':
	notify => Service['sshd'],
	mode => '0600',
	owner => 'root',
	group => 'root',
	source => '/etc/puppetlab/code/environment/production/manifest/configurationOverWrite/sshd_config',
	require => Package['openssh-server'],
	#content => template('ssh/sshd_config.erb'),
	}
}
