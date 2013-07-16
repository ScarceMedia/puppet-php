class php::openid($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-openid'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
