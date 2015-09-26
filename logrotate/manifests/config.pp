# Transfer single gmond log rotation file
class logrotate::config {
  file { 'logrotate':  # Alias to path location
      path    => '/etc/logrotate.d/gmond', # this is the location where the file will go on agent
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      source  => "puppet://${puppetserver}/modules/logrotate/gmond",
  }
}

