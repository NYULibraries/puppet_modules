# module that transfers testmod.conf file
class testmod( 

  # Variable definitions here fetch from hiera
  $server = hiera('server')
) 

{
  # Class definitions here
  include testmod::config
}

