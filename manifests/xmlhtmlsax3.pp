class php::xmlhtmlsax3($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-xml-htmlsax3'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
