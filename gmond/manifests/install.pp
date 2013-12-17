# Make sure gmond packages are installed
class gmond::install {
  package{ 'ganglia-gmond': 
    ensure => present,
    require => Class["yumrepo::config"],
  }

  package{ 'ganglia-gmond-modules-python': 
    ensure => present,
    require => Class["yumrepo::config"],
  }
}

