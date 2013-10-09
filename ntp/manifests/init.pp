# module that transfers ntp.conf file
class ntp{
  include ntp::install, ntp::config, ntp::service
}

