# Template that sets up custom pam config files
class pam::config {
  case $operatingsystem {
      RedHat:
      {
        # RHEL 5.x
        if $operatingsystemmajrelease == '5' {
          file { 'systems-auth':  # Alias to path location rhel5.x
              path    => '/etc/pam.d/systems-auth-ac', # this is the location where the file will go on agent
              owner   => 'root',
              group   => 'root',
              mode    => '0644',
              content => template('pam/system-auth-ac.erb'),  # Use file.erb to fill content of password-auth-ac file
              require => Class['pam::install'],
          }
        }

        # RHEL 6.x
        elsif $operatingsystemmajrelease == '6' {
          file { 'password-auth':  # Alias to path location
              path    => '/etc/pam.d/password-auth-ac', # this is the location where the file will go on agent
              owner   => 'root',
              group   => 'root',
              mode    => '0644',
              content => template('pam/password-auth-ac.erb'), # Use file.erb to fill content of password-auth-ac file
              require => Class['pam::install'],
          }
        }

      } # end RedHat statement
  } # end case statement
} # end class pam

