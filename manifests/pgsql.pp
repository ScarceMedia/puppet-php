class php:pgsql($ensure=latest) {
  include ::php
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php5-pgsql'
    }
    'RedHat': {
      $package = 'php-pgsql'
    }
    default: {
      fail("$::{osfamily} is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
