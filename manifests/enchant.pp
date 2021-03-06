class php::enchant($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php5-enchant'
    }
    'RedHat': {
      $package = 'php-enchant'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
