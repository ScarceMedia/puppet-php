class php::pear($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-pear'
    }
    'RedHat': {
      $package = 'php-pear'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
