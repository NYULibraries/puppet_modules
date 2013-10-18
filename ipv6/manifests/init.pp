# module that transfers ipv6.conf file
class ipv6{
  include ipv6::install, ipv6::config, ipv6::service
}

