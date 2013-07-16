class php::radiuslegacy($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-radius-legacy'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
