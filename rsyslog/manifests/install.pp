# Make sure rsyslog packages are installed
class rsyslog::install {
  case $operatingsystem {
    RedHat:
    {
      # RHEL 5.x
      if $operatingsystemmajrelease == '5' {
        package{ 'rsyslog5': 
          ensure => present,
        }
      }

      # RHEL 6.x
      elsif $operatingsystemmajrelease == '6' {
        package{ 'rsyslog': 
          ensure => present,
        } 
      } 
 
    } # end RedHat:
  } # end case
} # end class rsyslog

