# Transfer single sshd_config file
class sshd::config {
  if ($hostname == 'amsdev1') or ($hostname == 'ams1') {
    file { 'sshd':  # Alias to path location
        path    => '/etc/ssh/sshd_config', # this is the location where the file will go on agent
        owner   => 'root',
        group   => 'root',
        mode    => '0600',
        source  => "puppet://${puppetserver}/modules/sshd/sshd_config_amsdev1",
        require => Class['sshd::install'],
        notify  => Class['sshd::service'],
    }
  }

  else {
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
}
