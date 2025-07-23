class profile::database {
  class { '::mysql::server':
    root_password => 'Password123!',
    remove_default_account => true,
  }
}
