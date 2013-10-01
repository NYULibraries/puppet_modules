# Transfer single issue file
class issue::config {
  file { 'issue':  # Alias to path location
      path   => '/etc/issue', # this is the location where the file will go on agent
      owner  => 'root',
      group  => 'root',
      mode   => '0644',
      # Remove 'files' part from this path puppet://.../modules/issue/files/issue
      source => "puppet://${puppetserver}/modules/issue/issue",
  }
}
