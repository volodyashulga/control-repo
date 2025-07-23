class profile::firewall {
  notify { 'Running firewall':}
    
  class { 'firewalld':
    install_gui => false,
    service_enable => true,
    service_ensure => 'running',
    default_zone => 'public',
  }

  # Allow ssh
  firewalld_service { 'Allow ssh':
    ensure => 'present',
    name => 'ssh',
    zone => 'public',
  }

  # Allow HTTP
  firewalld_service { 'Allow http':
    ensure => 'present',
    name => 'http',
    zone => 'public',
  }
}
