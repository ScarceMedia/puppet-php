class php::jpgraph($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'libphp-jpgraph'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
