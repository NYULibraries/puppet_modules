# Config copies yum repo file
class yumrepo::config {
  file { 'nyu-rhel6.repo':  # Alias to path location
      path   => '/etc/yum.repos.d/nyu-rhel6.repo', # this is the location where the file will go on agent
      owner  => 'root',
      group  => 'root',
      mode   => '0640',
      source => "puppet://${puppetserver}/modules/yumrepo/nyu-rhel6.repo",
  }
}
