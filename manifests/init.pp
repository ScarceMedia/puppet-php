class php {
  include ::php::params

  package {$::php::params::packages:
    ensure => installed
  }
}
