# Transfer single resolv file
class resolv::config {
  file { 'resolv':  # Alias to path location
      path    => '/etc/resolv.conf', # this is the location where the file will go on agent
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      source  => "puppet://${puppetserver}/modules/resolv/resolv.conf",
  }
}

