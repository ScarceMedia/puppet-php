class php::date($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-date'
    }
    'RedHat': {
      $package = 'php-pear-Date'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
