class php::jabber($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'libphp-jabber'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
