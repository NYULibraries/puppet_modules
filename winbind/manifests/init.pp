# Make sure winbind daemon is online
class winbind{
  include winbind::install, winbind::service
}

