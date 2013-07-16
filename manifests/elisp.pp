class php::elisp($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-elisp'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
