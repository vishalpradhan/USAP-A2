class user {
	require packages
	
	#Creating different groups 	
	group{ 'sysadmin':
	ensure => present,
	gid =>'500',

	}

	group{ 'cars':
	ensure => present,
	gid =>'501',
	}

	group{ 'trucks':
	ensure => present,
	gid =>'502',
	}

	group{ 'ambulances':
	ensure => present,
	gid =>'503',
	}

	#Creating three different users 
	user { 'becca':
        ensure => present,
        home => '/home/becca',
        managehome => true,
        password => '$1$1cIWPs7b$JxeyaJ0JLbUQ7avmrFyx51', #the password is "password"
	uid => '10010077',
        groups => ['sysadmin', 'cars'],
        shell => '/bin/bash',
        }

        user { 'fred':
        ensure => present,
        home => '/home/fred',
        managehome => true,
	password => '$1$1cIWPs7b$JxeyaJ0JLbUQ7avmrFyx51', #the password is "password"
        uid => '10020077',
        groups => ['trucks', 'cars'],
        shell => '/bin/csh',
        }

        user { 'wilma':
        ensure => present,
        home => '/home/wilma',
        managehome => true,
	password => '$1$1cIWPs7b$JxeyaJ0JLbUQ7avmrFyx51', #the password is "password"
        uid => '10030077',
        groups => ['trucks', 'cars', 'ambulances'],
	shell => '/bin/bash',
	purge_ssh_key => true,
        }

	#ssh_auth_for_wilma
	ssh_authorized_key{'wilma_ssh':
	ensure => present,
	user => 'wilma',
	type => 'ssh-rsa',
	key => 'WilmasKeyGeneratedHere',
	
	}
}
