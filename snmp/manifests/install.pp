# Make sure net-snmp package is installed
class snmp::install {
  package{ 'net-snmp':
    ensure => present,
  }
}
