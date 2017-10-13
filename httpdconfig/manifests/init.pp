  #This class over writes the default config file
  class httpdconfig{
    file{ '/var/www/s3530077':
      ensure => 'directory',
      owner  => 'root',
      mode   => '0600',
    }

    #Over writing the default httpd.conf file with the custome one
    ->file{ '/etc/httpd/conf/httpd.conf':
      ensure  => present,
      #notify  => Service['httpd'],
      mode    => '0777',
      owner   => 'root',
      group   => 'root',
      source  => '/etc/puppetlabs/code/environments/production/manifests/configurationOverWrite/httpd.conf',
      require => Package['httpd'],
    }

    #initial setup of the httpd config file
    ->service{ 'httpd':
      ensure    => running,
      enable    => true,
      subscribe => File['/etc/httpd/conf/httpd.conf'],
    }
  }
