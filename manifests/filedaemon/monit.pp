#
# == Class bacula::filedaemon::monit
#
# Setup monit rules for Bacula Filedaemon
#
class bacula::filedaemon::monit
(
    $status,
    $monitor_email
)
{
  monit::fragment { 'bacula-bacula-fd.monit':
        status     => $status,
        modulename => 'bacula',
        basename   => 'bacula-fd',
  }
}
