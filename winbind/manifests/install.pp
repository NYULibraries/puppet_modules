# Make sure winbind package is present
class winbind::install {
  package{ 'samba-winbind':
    ensure => present,
  }
}
