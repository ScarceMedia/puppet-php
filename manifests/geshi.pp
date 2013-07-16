class php::geshi($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-geshi'
    }
    'RedHat': {
      $package = 'php-geshi'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
