class php::exactimage($ensure=latest) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php5-exactimage'
    }
    default: {
      fail("$::{osfamily} is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
