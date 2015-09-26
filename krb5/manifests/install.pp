# Make sure krb5 package is installed
class krb5::install {
  package{ 'krb5-libs':
    ensure => present,
  }
}
