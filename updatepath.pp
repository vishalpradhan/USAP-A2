class updatepath{
	file{'/etc/profile.d/append-user-bin.sh':
	owner => 'root',
	mode => '644',
	content => 'PATH=$PATH:/usr/local/bin',
	}
}
