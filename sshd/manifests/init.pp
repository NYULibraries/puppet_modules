# Make sure sshd daemon is online
class sshd{
  include sshd::config, sshd::install, sshd::service
}

