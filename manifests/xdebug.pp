class php::xdebug($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php5-xdebug'
    }
    'RedHat': {
      $package = 'php-pecl-xdebug'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
