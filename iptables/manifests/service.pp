# iptables service configuration
class iptables::service {
  service { 'iptables':
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    enable     => true,
    require    => Class['iptables::install'],
  }
}
