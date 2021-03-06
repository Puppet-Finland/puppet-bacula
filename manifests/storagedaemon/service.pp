#
# == Class: bacula::storagedaemon::service
#
# Enable Bacula Storagedaemon at boot
#
class bacula::storagedaemon::service {

    include ::bacula::params

    service { 'bacula-storagedaemon':
        name    => $::bacula::params::bacula_storagedaemon_service,
        enable  => true,
        require => Class['bacula::storagedaemon::config'],
    }
}
