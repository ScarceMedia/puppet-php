class php {
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

  if(!defined(Package[$package])){
    package{$package:
      ensure => $ensure
    }  
  }

}
