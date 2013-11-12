# cron service configuration
class cron::service {
  service { 'crond':
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    enable     => true,
    require    => Class['cron::install'],
  }
}

