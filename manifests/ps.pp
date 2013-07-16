class php:ps($ensure=latest) {
  include ::php
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php5-ps'
    }
    default: {
      fail("$::{osfamily} is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
