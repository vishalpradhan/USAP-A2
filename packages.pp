
class packages{
        package{ 'httpd':
        ensure => 'installed',
        #enable => true,

        }
	service { 'httpd':
	enable => true,
	}

	file { 'index.html':
	path => '/var/www/html/index.html',
	content => 'package exists',
	require => Package['httpd'],
	ensure => file,
	}

        package{ 'openssh':
        ensure => 'installed',
        #enable => true,

        }

	service { 'openssh':
        enable => true,
        }


        package { 'mysql-server':
        ensure => 'installed',
        #enable => true,

        }
	service { 'mysql-server':
        enable => true,
        }


        package { 'mysql':
        ensure => 'installed',
        #enable => true,

        }

	service { 'mysql':
        enable => true,
        }

        package { 'vncserver':
        ensure => 'installed',
        #enable => true,

        }

	service { 'vncserver':
        enable => true,
        }


        package { 'tmux':
        ensure => 'installed',
        #enable => true,

        }

	service { 'tmux':
        enable => true,
        }


        package { 'dia2code':
        ensure => 'installed',
        #enable => true,

        }

	service { 'dia2code':
        enable => true,
        }


        package { 'lynx':
        ensure => 'installed',
        #enable => true,

        }

	service { 'lynx':
        enable => true,
        }


        package { 'gcc':
        ensure => 'installed',
        #enable => true,

        }

	service { 'gcc':
        enable => true,
        }


        package { 'gdb':
        ensure => 'installed',
        #enable => true,

        }

	service { 'gdb':
        enable => true,
        }


        package { 'cgdb':
        ensure => 'installed',
        #enable => true,

        }

	service { 'cgdb':
        enable => true,
        }

        package { 'vim':
        ensure => 'installed',
        #enable => true,

        }
	
	service { 'vim':
        enable => true,
        }


        package { 'emacs':
        ensure => 'installed',
        #enable => true,

        }

	service { 'emacs':
        enable => true,
        }

        package { 'sshfs':
        ensure => 'installed',
        #enable => true,

        }

	service { 'sshfs':
        enable => true,
        }

	package { 'csh':
	ensure => 'installed',
	#enable => true,
	}

	service { 'csh':
        enable => true,
        }

	#package { 'pupet-lint':
	#ensure => '1.1.0',
	#provider => 'gem',
	#}
}

