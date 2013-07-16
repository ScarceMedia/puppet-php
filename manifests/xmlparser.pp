class php::xmlparser($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-xml-parser'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
