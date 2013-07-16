class php::dev($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'sbnc-php-dev'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
