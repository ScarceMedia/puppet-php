class php::eventdispatcher($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-event-dispatcher'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
