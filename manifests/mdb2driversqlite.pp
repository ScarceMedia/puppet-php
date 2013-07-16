class php::mdb2driversqlite($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-mdb2-driver-sqlite'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
