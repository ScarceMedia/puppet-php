class php::soap($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-soap'
    }
    'RedHat': {
      $package = 'php-soap'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
