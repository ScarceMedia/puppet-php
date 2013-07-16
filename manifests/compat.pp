class php::compat($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-compat'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
