# ipv6 service configuration
class ipv6::service {
  service { 'ip6tables':
    ensure     => stopped,
    enable     => false,       # runs chkconfig turning on/off service
    require    => Class[ipv6::config],
  }
}
