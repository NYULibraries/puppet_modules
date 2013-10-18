# Make sure sshd daemon is online
class sshd{
  include sshd::install, sshd::service
}

