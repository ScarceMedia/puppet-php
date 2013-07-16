class php::config($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-config'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
