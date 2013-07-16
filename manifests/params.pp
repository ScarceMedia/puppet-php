class php::params {
  case $::osfamily {
    'RedHat': {
      $packages = ['php', 'php-pear', 'php-snmp', 'php-gd']
    }
    'Debian': {
      $packages = ['php-pear']
    }
    default: {
      fail("${::osfamily} is not supported")
    }
  }
}
