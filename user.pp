class user {
	require packages
	
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

	 user { 'becca':
        ensure => present,
        home => '/home/becca',
        managehome => true,
        uid => '10010077',
        groups => ['sysadmin', 'cars'],
        shell => '/bin/bash',
        }

        user { 'fred':
        ensure => present,
        home => '/home/fred',
        managehome => true,
        uid => '10020077',
        groups => ['trucks', 'cars'],
        shell => '/bin/bsd-csh',
        }

        user { 'wilma':
        ensure => present,
        home => '/home/wilma',
        managehome => true,
        uid => '10030077',
        groups => ['trucks', 'cars', 'ambulances'],
        }

	#ssh_auth_for_wilma
	ssh_authorized_key{'wilma_ssh':
	ensure => present,
	user => 'wilma',
	type => 'ssh-rsa',
	key => 'WilmasKeyGeneratedHere',
	
	}
}
