# Transfer single snmp file
class snmp::config {
  file { 'snmp':  # Alias to path location
      path    => '/etc/snmp/snmpd.conf', # this is the location where the file will go on agent
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      source  => "puppet://${puppetserver}/modules/snmp/snmpd.conf",
      require => Class['snmp::install'],
      notify  => Class['snmp::service'],
  }
}

