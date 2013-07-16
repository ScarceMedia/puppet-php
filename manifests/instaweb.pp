class php::instaweb($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'cakephp-instaweb'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
