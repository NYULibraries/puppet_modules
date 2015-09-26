# Make sure sshd package is present
class sshd::install {
  package{ 'openssh-server':
    ensure => present,
  }
}
