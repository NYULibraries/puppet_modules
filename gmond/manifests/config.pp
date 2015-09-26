# Configure gmond.conf file
class gmond::config {
  file { 'gmond':  # Alias to path location
      path    => '/etc/ganglia/gmond.conf', # this is the location where the file will go on agent
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      source  => "puppet://${puppetserver}/modules/gmond/gmond.conf",
      require => Class['gmond::install'],
      notify  => Class['gmond::service'],
  }
}
