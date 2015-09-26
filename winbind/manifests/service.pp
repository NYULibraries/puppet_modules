# winbind service configuration
class winbind::service {
  service { 'winbind':
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    enable     => true,
    require    => Class['winbind::install'],
  }
}
