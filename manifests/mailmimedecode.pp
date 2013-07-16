class php::mailmimedecode($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-mail-mimedecode'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
