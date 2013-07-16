class php::pclzip($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'libphp-pclzip'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
