class opensips (
  $load_signaling_module = $opensips::params::load_signaling_module,
  $load_sl_module = $opensips::params::load_sl_module,
  $load_tm_module = $opensips::params::load_tm_module,
  $load_rr_module = $opensips::params::load_rr_module,
  $load_maxfwd_module = $opensips::params::load_maxfwd_module,
  $load_sipmsgops_module = $opensips::params::load_sipmsgops_module,
  $load_mi_fifo_module = $opensips::params::load_mi_fifo_module,
  $load_uri_module = $opensips::params::load_uri_module,
  $load_usrloc_module = $opensips::params::load_usrloc_module,
  $load_registrar_module = $opensips::params::load_registrar_module,
  $load_acc_module = $opensips::params::load_acc_module,
) inherits opensips::params {
  class { 'opensips::install': }
  class { 'opensips::config': }
  class { 'opensips::service': }
}
