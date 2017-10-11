class httpdconfig{
	#initial setup of the httpd config file
	service{ 'httpd':
	enable => true,
	}

	#Over writing the default httpd.conf file with the custome one
	file{ '/etc/httpd/conf/httpd.conf':
	ensure => present,
	notify => Service['httpd'],
	mode => '0777',
	owner => 'root',
	group => 'root',
	source => '/etc/puppetlabs/code/environments/production/manifests/configurationOverWrite/httpd.conf',
	require => Package['httpd'],
	}


}
