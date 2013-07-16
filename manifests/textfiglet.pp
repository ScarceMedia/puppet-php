class php::textfiglet($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-text-figlet'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
