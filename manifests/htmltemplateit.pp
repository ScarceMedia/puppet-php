class php::htmltemplateit($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-html-template-it'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
