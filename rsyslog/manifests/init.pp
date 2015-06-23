# module that installs rsyslog.conf for log files
class rsyslog{
  include rsyslog::install, rsyslog::config, rsyslog::service
}
