# Make sure iptables daemon is online
class iptables{
  include iptables::install, iptables::service
}

