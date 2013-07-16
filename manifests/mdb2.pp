class php::mdb2($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-mdb2'
    }
    'RedHat': {
      $package = 'php-pear-MDB2'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
