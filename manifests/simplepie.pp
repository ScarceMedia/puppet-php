class php::simplepie($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'libphp-simplepie'
    }
    'RedHat': {
      $package = 'php-simplepie'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
