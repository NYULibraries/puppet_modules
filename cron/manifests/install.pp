# Make sure cron package is present
class cron::install {
  case $operatingsystem {
    RedHat:
    {
      # RHEL 5.x
      if $operatingsystemmajrelease == '5' {
        package{ 'vixie-cron':
          ensure => present,
        }
      }

      # RHEL 6.x
      elsif $operatingsystemmajrelease == '6' {
        package{ 'cronie':
          ensure => present,
        }
      }
    } # end of if statement
  } # end of case
} # end of class
