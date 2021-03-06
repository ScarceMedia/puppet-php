class php::authpam($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php5-auth-pam'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
