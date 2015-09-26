# Make sure epel package is uninstalled
class epel::install {
  package{ 'epel-release':
    ensure => absent,
  }
}
