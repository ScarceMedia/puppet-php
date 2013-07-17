define php::pear::package($ensure) {
  include ::php::pear
  
  case $ensure {
    'present', 'installed': {
      exec{"php-pear-config-set-${name}":
        command => "pear install '${name}'",
        path    => ['/bin', '/usr/bin'],
        unless  => "pear list '${name}'",
        require => Exec['php-pear-clear-cache']
      }        
    }
    'absent': {
      exec{"php-pear-config-set-${name}":
        command => "pear uninstall '${name}'",
        path    => ['/bin', '/usr/bin'],
        if      => "pear list '${name}'",
        require => Exec['php-pear-clear-cache']
      }      
    }
  }
}