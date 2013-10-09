# Make sure ntp package is installed
class ntp::install {
  package{ 'ntp':
    ensure => present,
  }
}
