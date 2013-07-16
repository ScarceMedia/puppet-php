class php::pager($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-pager'
    }
    'RedHat': {
      $package = 'php-pear-Pager'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
