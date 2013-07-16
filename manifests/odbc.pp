class php:odbc($ensure=latest) {
  include ::php
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php5-odbc'
    }
    'RedHat': {
      $package = 'php-odbc'
    }
    default: {
      fail("$::{osfamily} is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
