class php::imagetext($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-image-text'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
