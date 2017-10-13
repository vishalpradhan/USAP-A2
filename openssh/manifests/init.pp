  #root access to be disabled
  class openssh{

    #configuration to overwrite default sshd configuration with custom one
    file{ '/etc/ssh/sshd_config':
      ensure  => present,
      #notify  => Service['sshd'],
      mode    => '0777',
      owner   => 'root',
      group   => 'root',
      source  => '/etc/puppetlabs/code/environments/production/manifests/configurationOverWrite/sshd_config',
      require => Package['openssh-server'],
    }
    #Service required to run sshd
    ->service { 'sshd' :
      ensure    => running,
      enable    => true,
      require   => Package['openssh-server'],
      subscribe => File['/etc/ssh/sshd_config'],
    }
  }
