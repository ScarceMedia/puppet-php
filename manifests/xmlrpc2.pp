class php::xmlrpc2($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-xml-rpc2'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
