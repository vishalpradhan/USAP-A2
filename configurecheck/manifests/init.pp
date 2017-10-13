  #set the runtime interval from default to 20 mins
  class configurecheck{
    #Set run interval to 20 minutes.
    augeas{'agent_runinterval':
      context => '/etc/puppetlabs/puppet/puppet.conf/agent',
      changes => ['set runinterval 20m'],
    }

    #augeas{ 'runlevel':
    #context => "/etc/inittab",
    #changes => [ "set id/runlevels 3",],
    #}

    #Ensures installed packages comes up on boot
    exec{ 'runlevel':
      command => '/usr/bin/systemctl set-default multi-user.target',
    }
  }
