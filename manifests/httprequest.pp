class php::httprequest($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-http-request'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
