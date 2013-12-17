# Config copies yum repo file
class yumrepo::config {
  case $operatingsystem {
    RedHat:
    {
      # RHEL 5.x
      if $operatingsystemmajrelease == '5' {
         file { 'nyu-rhel5.repo':  # Alias to path location
           path   => '/etc/yum.repos.d/nyu-rhel5.repo', # this is the location where the file will go on agent
           owner  => 'root',
           group  => 'root',
           mode   => '0640',
           source => "puppet://${puppetserver}/modules/yumrepo/nyu-rhel5.repo",
          }
      }

      # RHEL 6.x
      elsif $operatingsystemmajrelease == '6' {
        file { 'nyu-rhel6.repo':  # Alias to path location
          path   => '/etc/yum.repos.d/nyu-rhel6.repo', # this is the location where the file will go on agent
          owner  => 'root',
          group  => 'root',
          mode   => '0640',
          source => "puppet://${puppetserver}/modules/yumrepo/nyu-rhel6.repo",
        }
      }
    }  # end of RedHat statement
  } # end of case statement
} # end of class yumrepo
