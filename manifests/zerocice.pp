class php::zerocice($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-zeroc-ice'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
