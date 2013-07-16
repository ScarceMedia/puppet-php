class php::netsocket($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-net-socket'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
