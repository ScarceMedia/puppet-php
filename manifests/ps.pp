class php::ps($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php5-ps'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
