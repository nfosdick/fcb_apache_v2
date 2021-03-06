class fcb_apache_v2(
  $config,
  $vhosts,
  $vhosts_defaults,
  $modules,
  $packages,
){

  case $facts['os']['name'] {
    'RedHat', 'CentOS':  { include fcb_apache_v2::linux }
    'Windows':           { include fcb_apache_v2::windows }
  }
}
