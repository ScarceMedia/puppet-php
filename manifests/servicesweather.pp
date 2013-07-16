class php::servicesweather($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-services-weather'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
