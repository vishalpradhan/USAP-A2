  #message to output when the user logs in
  class messageoutput{
    file{ '/etc/profile.d/login.sh':
      ensure  => present,
      mode    => '0777',
      owner   => 'root',
      group   => 'root',
      content =>'timestamp=`/bin/date +"%Y%d%m_%H:%M:%S"`;
      echo "Agent run starting at $timestamp "',
      }
    }
