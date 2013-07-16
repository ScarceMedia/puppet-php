class php::wikidiff2($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-wikidiff2'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
