# module that keeps crond service online
class cron{
  include cron::install, cron::service
}

