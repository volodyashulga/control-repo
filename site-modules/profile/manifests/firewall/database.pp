class profile::firewall::apache {
    firewalld_port { 'mysql':
      ensure => 'present',
      zone => 'public',
      port => '3306',
      protocol => 'tcp',
  }
}
