class php:svn($ensure=latest) {
  include ::php
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php5-svn'
    }
    default: {
      fail("$::{osfamily} is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
