class php::netportscan($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-net-portscan'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
