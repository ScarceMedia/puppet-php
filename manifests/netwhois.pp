class php::netwhois($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-net-whois'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
