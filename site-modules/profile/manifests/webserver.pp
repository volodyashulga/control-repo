class profile::webserver {
  # Apache class
  class { 'apache':
    default_vhost => false,
  }
  apache::vhost { 'vhost.example.com':
    port => '80',
    docroot => '/var/www/html',
  }
  file { '/var/www/html/index.html':
    ensure => file,
    content => "Hello from Puppet-managed Apache server\n",
    owner => 'www-data',
    group => 'www-data',
    mode => '0644',
}
