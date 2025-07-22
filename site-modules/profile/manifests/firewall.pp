class profile::firewall {
  class { 'firewalld':
    install_gui => false,
    service_enable => true,
    service_ensure => 'running',
    default_zone => 'public',
  }

  # Allow ssh
  firewalld::service {
    ensure => 'present',
    zone => 'public',
  }

  # Allow HTTP
  firewalld::service { 'http':
    ensure => 'present',
    zone => 'public',
  }
}
