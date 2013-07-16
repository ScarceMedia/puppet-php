class php::docs($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'kdevelop-php-docs'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
