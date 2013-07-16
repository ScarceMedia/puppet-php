class php::doc($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-doc'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
