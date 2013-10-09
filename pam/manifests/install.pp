# Make sure pam authconfig package is present and installed
class pam::install {
  package{ 'authconfig':
    ensure => present,
  }
}
