class php::htmlcommon($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-html-common'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
