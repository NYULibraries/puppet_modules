# Make sure winbind package is present
class winbind::install {
  case $operatingsystem {
    RedHat:
    {
      # RHEL 5.x
      if $operatingsystemmajrelease == '5' {
        package{ 'samba-common':
          ensure => present,
        }
      }

      # RHEL 6.x
      elsif $operatingsystemmajrelease == '6' {
        package{ 'samba-winbind':
          ensure => present,
        }
      }
    } # end of if statement
  } # end of case
} # end of class
