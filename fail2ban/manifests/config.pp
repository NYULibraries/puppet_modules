# Transfer single fail2ban file
class fail2ban::config {
  file { 'jail_local':  # Alias to path location
      path    => '/etc/fail2ban/jail.local', # this is the location where the file will go on agent
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      source  => "puppet://${puppetserver}/modules/fail2ban/jail.local",
      require => Class['fail2ban::install'],
      notify  => Class['fail2ban::service'],
  }

  file { 'sendmail_whois_lines':  # Alias to path location
      path    => '/etc/fail2ban/action.d/sendmail-whois-lines.local', # this is the location where the file will go on agent
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      source  => "puppet://${puppetserver}/modules/fail2ban/sendmail-whois-lines.local",
      require => Class['fail2ban::install'],
      notify  => Class['fail2ban::service'],
  }
}

