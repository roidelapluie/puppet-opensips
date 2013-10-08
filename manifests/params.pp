class opensips::params{
  $load_signaling_module = true
  $load_sl_module = true
  $load_tm_module = true
  $load_rr_module = true
  $load_maxfwd_module = true
  $load_sipmsgops_module = true
  $load_mi_fifo_module = true
  $load_uri_module = true
  $load_usrloc_module = true
  $load_registrar_module = true
  $load_acc_module = true


  $modules = [
    'signaling',
    'sl',
    'tm',
    'rr',
    'maxfwd',
    'sipmsgops',
    'mi',
    'uri',
    'usrloc',
    'registrar',
    'acc',
  ]
  case $::operatingsystem {
    redhat, centos: {
      $configuration_file = '/etc/opensips/opensips.cfg'
    }
    default: {
      fail("Unsupported platform: ${::operatingsystem}")
    }
  }

}

