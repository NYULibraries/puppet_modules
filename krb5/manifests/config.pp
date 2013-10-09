# Transfer single krb5.conf file
class krb5::config {
  file { 'krb5':  # Alias to path location
      path    => '/etc/krb5.conf', # this is the location where the file will go on agent
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      source  => "puppet://${puppetserver}/modules/krb5/krb5.conf",
      require => Class['krb5::install'],
  }
}

