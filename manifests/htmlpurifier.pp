class php::htmlpurifier($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-htmlpurifier'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
