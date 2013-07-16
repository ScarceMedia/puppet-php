class php::mimetype($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-mime-type'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
