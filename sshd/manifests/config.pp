# Transfer single sshd_config file
class sshd::config {
  file { 'sshd':  # Alias to path location
      path    => '/etc/ssh/sshd_config', # this is the location where the file will go on agent
      owner   => 'root',
      group   => 'root',
      mode    => '0600',
      source  => "puppet://${puppetserver}/modules/sshd/sshd_config",
      require => Class['sshd::install'],
      notify  => Class['sshd::service'],
  }
}

