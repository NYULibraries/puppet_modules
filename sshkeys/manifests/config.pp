# config creates directory and copys public key
class sshkeys::config {
  file { '/root/.ssh':  # Create directory structure
      ensure => 'directory',
      owner  => 'root',
      group  => 'root',
      mode   => '0700',
  }

  file { 'root_public_key':  # Alias to path location
      path   => '/root/.ssh/authorized_keys', # this is the location where the file will go on agent
      owner  => 'root',
      group  => 'root',
      mode   => '0600',
      source => "puppet://${puppetserver}/modules/sshkeys/authorized_keys",
  }
}

