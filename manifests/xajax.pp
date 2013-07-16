class php::xajax($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-xajax'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
