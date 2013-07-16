class php:netimap($ensure=latest) {
  include ::php
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-net-imap'
    }
    default: {
      fail("$::{osfamily} is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
