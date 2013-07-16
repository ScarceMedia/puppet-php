class php::cache($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-cache'
    }
    'RedHat': {
      $package = 'php-pear-Cache'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
