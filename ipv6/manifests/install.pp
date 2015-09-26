# Make sure ipv6 package is installed
class ipv6::install {
  package{ 'iptables-ipv6':
    ensure => present,
  }
}
