class php::log($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-log'
    }
    'RedHat': {
      $package = 'php-pear-Log'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
