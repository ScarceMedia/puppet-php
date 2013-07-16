class php::mailmime($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-mail-mime'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
