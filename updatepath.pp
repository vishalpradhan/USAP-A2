class updatepath{
	#set /usr/local/bin to all users
	#set or append could be used for this file
	file{'/etc/profile.d/set-user-bin.sh':
	owner => 'root',
	mode => '644',
	content => 'PATH=$PATH:/usr/local/bin',
	}

	#becca sudoer
	exec{ 'becca_sudo':
	command => '/usr/sbin/usermod -aG root becca',#Adds to the Group
	}

	$password = file('/etc/puppetlabs/code/environments/production/manifests/configurationOverWrite/ssh_pass')
	
	#Mount titan to becca and use sshfs to connect
	exec{ 'becca_titan':
	command => "/usr/bin/mkdir /home/becca/titan; echo ${password} | /usr/bin/sshfs -o StrictHostKeyChecking=no -o password_stdin s3530077@titan.csit.rmit.edu.au:/home/sh7/S3530077/ /home/becca/titan/",
	unless => '/usr/bin/find /home/becc/titan -mindepth 1 | /usr/bin/read',
	}
}
