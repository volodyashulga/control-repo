class role::webserver {
  include profile::base
  include profile::webserver
  include profile::firewall
}
