# module that transfers ntp.conf file
class ntp{
  include ntp::config, ntp::service
}

