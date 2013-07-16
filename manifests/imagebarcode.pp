class php::imagebarcode($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-image-barcode'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
