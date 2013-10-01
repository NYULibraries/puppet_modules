class pam::config {
  case $operatingsystem {
      RedHat:
      {
        # RHEL 5.x
        if $operatingsystemmajrelease == '5' {
          file { 'systems-auth':  # Alias to path location rhel5.x
              path  => '/etc/pam.d/systems-auth-ac', # this is the location where the file will go on agent
              owner  => 'root',
              group  => 'root',
              mode   => '0644',
              source => "puppet://${puppetserver}/modules/pam/systems-auth-ac",
          }
        }

        # RHEL 6.x
        elsif $operatingsystemmajrelease == '6' {
          file { 'password-auth':  # Alias to path location
              path  => '/etc/pam.d/password-auth-ac', # this is the location where the file will go on agent
              owner  => 'root',
              group  => 'root',
              mode   => '0644',
              source => "puppet://${puppetserver}/modules/pam/password-auth-ac",
          }
        }

      } # end RedHat statement
  } # end case statement
} # end class pam

