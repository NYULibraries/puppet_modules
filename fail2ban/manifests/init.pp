# module that transfers jail.local and sendmail-whois-lines.local files
class fail2ban{
  include fail2ban::install, fail2ban::service
}

