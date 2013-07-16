class php::httpwebdavserver($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-http-webdav-server'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
