class php::netdnsbl($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-net-dnsbl'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
