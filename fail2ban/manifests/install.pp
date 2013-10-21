# Make sure fail2ban package is installed
class fail2ban::install {
  package{ 'shorewall': ensure => present }
  package{ 'python-inotify': ensure => present }
  package{ 'gamin-python': ensure => present }
  package{ 'fail2ban': ensure => present }
}
