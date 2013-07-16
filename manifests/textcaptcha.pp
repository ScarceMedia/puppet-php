class php::textcaptcha($ensure=installed) {
  include ::php::params

  case $::osfamily {
    'Debian': {
      $package = 'php-text-captcha'
    }
    default: {
      fail("osfamily '${::osfamily}' is not supported.")
    }
  }

  package{$package:
    ensure => $ensure
  }
}
