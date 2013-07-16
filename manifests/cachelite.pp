class php::cachelite($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-cache-lite'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
