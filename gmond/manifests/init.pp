# module that installs gmond for ganglia
class gmond{
  include gmond::install, gmond::config, gmond::service
}
