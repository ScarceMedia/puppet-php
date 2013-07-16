class php::kolabfilter($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-kolab-filter'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
