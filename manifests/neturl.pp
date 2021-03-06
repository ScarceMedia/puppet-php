class php::neturl($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-net-url'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
