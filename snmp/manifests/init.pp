# module that transfers snmpd.conf file
class snmp{
  include snmp::config, snmp::service
}

