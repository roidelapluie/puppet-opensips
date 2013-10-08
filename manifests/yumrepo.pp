class opensips::yumrepo{
  yumrepo {
    'opensips':
      baseurl  => 'http://yum.opensips.org/1.10/releases/el/6/$basearch',
      gpgcheck => '0',
  }
}
