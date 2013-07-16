class php::recode($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php5-recode'
    }
    'RedHat': {
      $package = 'php-recode'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
