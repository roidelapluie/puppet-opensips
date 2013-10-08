class opensips::service {

  service {
    'opensips':
      ensure    => running,
      require   => Package['opensips'],
      subscribe => File[$opensips::params::configuration_file],
  }

}
