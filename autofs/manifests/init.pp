# Manages automounter service/config
class autofs{
  include autofs::install, autofs::config, autofs::service
}

