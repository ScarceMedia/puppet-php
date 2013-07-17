class php::pear($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-pear'
    }
    'RedHat': {
      $package = 'php-pear'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }

  exec{'php-pear-clear-cache':
    command     => 'pear clear-cache',
    path        => ['/bin', '/usr/bin'],
    refreshonly => true,
    require     => Package[$package]
  }  

}
