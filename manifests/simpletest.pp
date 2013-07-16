class php::simpletest($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-simpletest'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
