class php::codesniffer($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-codesniffer'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
