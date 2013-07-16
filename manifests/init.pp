class php($ensure='installed') {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php5'
    }
    'RedHat': {
      $package = 'php'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }  


}
