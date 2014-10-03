# Make sure openssl packages are installed
# Fix for hearbleed openssl vulnerability.
# Install openssl-1.0.1e-16.el6_5.7

class openssl::install {
  # Only for RHEL6.x
  if $operatingsystemmajrelease == '6' {
    package{ 'openssl': 
      #ensure => "1.0.1e-16.el6_5.7"
      ensure => "latest"
    }
  }
}

