# Make sure iptables package is installed
class iptables::install {
  package{ 'iptables':
    ensure => present,
  }
}
