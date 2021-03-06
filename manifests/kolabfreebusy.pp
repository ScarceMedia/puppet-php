class php::kolabfreebusy($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-kolab-freebusy'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
