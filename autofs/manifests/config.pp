# Transfer single issue file
class autofs::config {
  file { 'autolibits': # Alias to path location
      path   => '/etc/auto.libits', # this is the location where the file will go on agent
      owner  => 'root',
      group  => 'root',
      mode   => '0644',
      source => "puppet://${puppetserver}/modules/autofs/auto.libits",
      notify  => Class['autofs::service'],
  }

  file { 'automaster':  # Alias to path location
      path   => '/etc/auto.master', # this is the location where the file will go on agent
      owner  => 'root',
      group  => 'root',
      mode   => '0644',
      source => "puppet://${puppetserver}/modules/autofs/auto.master",
      require => Class['autofs::install'],
      notify  => Class['autofs::service'],
  }
}

