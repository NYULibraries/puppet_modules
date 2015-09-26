# module that transfers snmpd.conf file
class snmp{
  include snmp::install, snmp::config, snmp::service
}

