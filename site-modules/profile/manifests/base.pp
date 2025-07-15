class profiles::base {
  notify {'Applying profile::base to this node!': }

  # Make sure vim is installed
  package { 'vim':
    ensure => present,
  }

  #Set up motd
  file { '/etc/motd':
    ensure => file,
    content => "Welcome to my puppet managed project",
    owner => 'root',
    group => 'root',
    mode => '0644',
  }

  # Create user volodya
  user { 'volodya':
    ensure => present,
    shell => '/bin/bash',
    managehome => true,
  }
}
