# Make sure bash packages are installed
# Fix for shellshock bash vulnerability.
# keep bash updated

class bash::install {
  # Only for RHEL6.x
  if $operatingsystemmajrelease == '6' {
    package{ 'bash': 
      ensure => "latest"
    }
  }
}

