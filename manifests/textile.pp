class php::textile($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-textile'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
