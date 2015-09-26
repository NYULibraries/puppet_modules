# gmond service configuration
class gmond::service {
  service { 'gmond':
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    enable     => true,
    require    => Class[gmond::config],
  }
}

