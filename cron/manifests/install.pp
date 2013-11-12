# Make sure cron package is present
class cron::install {
  package{ 'cronie':
    ensure => present,
  }
}

