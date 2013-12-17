# Transfer single testmod file
class testmod::config{
  file { 'testmod':  # Alias to path location
      path    => '/var/tmp/testmod.conf', # this is the location where the file will go on agent
      content => template("testmod/testmod.conf.erb") 
  }
}

