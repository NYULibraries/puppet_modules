# Transfer single ntp file
class ntp::config {
  file { 'ntp':  # Alias to path location
      path   => '/etc/ntp.conf', # this is the location where the file will go on agent
      owner  => 'root',
      group  => 'root',
      mode   => '0644',
      source => "puppet://${puppetserver}/modules/ntp/ntp.conf",
  }
}

