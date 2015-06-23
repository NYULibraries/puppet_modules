# Configure rsyslog.conf file
class rsyslog::config {
  file { 'rsyslog':  # Alias to path location
      path    => '/etc/rsyslog.conf', # this is the location where the file will go on agent
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      source  => "puppet://${puppetserver}/modules/rsyslog/rsyslog.conf",
      require => Class['rsyslog::install'],
      notify  => Class['rsyslog::service'],
  }
}
