# Transfer single ipv6 file
class ipv6::config {
  file { 'ipv6':  # Alias to path location
      path    => '/etc/modprobe.d/ipv6.conf', # this is the location where the file will go on agent
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      source  => "puppet://${puppetserver}/modules/ipv6/ipv6.conf",
      require => Class['ipv6::install'],
      notify  => Class['ipv6::service'],
  }
}

