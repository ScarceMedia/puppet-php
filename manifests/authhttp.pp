class php::authhttp($ensure=installed) {
  include ::php
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-auth-http'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
