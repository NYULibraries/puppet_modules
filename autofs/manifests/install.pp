# Make sure autofs package is installed
class autofs::install {
  package{ 'autofs':
    ensure => present,
  }
}
