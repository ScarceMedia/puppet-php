define php::pear::config-set($ensure, $value=unset) {
  case $ensure {
    'absent':{
      exec{"php-pear-config-set-${name}":
        command => "pear config-set '${name}' ''",
        path    => ['/bin', '/usr/bin'],
        unless  => "pear config-get '${name}' | wc -c | grep 1"
      }
    }
    'present':{
      exec{"php-pear-config-set-${name}":
        command => "pear config-set '${name}' '${value}'",
        path    => ['/bin', '/usr/bin'],
        unless  => "pear config-get '${name}' | grep '${value}'"
      }
    }
  }
}