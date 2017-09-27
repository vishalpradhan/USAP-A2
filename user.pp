class user {
	#creating group sysadmin with groupid
	group{ 'sysadmin':
	ensure => present,
	gid =>'500',

	}

	#creating group cars with their groupId
	group{ 'cars':
	ensure => present,
	gid =>'501',
	}

	#creating group trucks with their groupId
	group{ 'trucks':
	ensure => present,
	gid =>'502',
	}

	#creating group ambulances with their groupId
	group{ 'ambulances':
	ensure => present,
	gid =>'503',
	}
	
	#creating user becca with their respective fields
	user { 'becca':
	ensure => present,
	home => '/home/becca',
	managehome => true,
	uid => '10010077',
	groups => ['sysadmin', 'cars'],
	shell => '/bin/bash',
	}

	#creating user fred with their respective fields
	user { 'fred':
	ensure => present,
	home => '/home/fred',
	managehome => true,
	uid => '10020077',
	groups => ['trucks', 'cars'],
	shell => '/bin/csh',
	}

	#creating user wilma with theor respective fields
	user { 'wilma':
	ensure => present,
	home => '/home/wilma',
	managehome => true,
	uid => '10030077',
	groups => ['trucks', 'cars', 'ambulances'],
	}


}


