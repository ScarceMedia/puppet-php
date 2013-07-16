class php::snoopy($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'libphp-snoopy'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
