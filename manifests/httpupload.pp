class php::httpupload($ensure=installed) {
  include ::php
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-http-upload'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
