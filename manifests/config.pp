class opensips::config {
  file {
    $opensips::params::configuration_file:
      ensure  => present,
      require => Package['opensips'],
      content => template('opensips/opensips.cfg.erb')
  }
}
