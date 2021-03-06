#
# == Define: bacula::storagedaemon::packetfilter::allow_ip
#
# Allow connections to the Storagedaemon from the specified IPv4 
# address/network.
#
define bacula::storagedaemon::packetfilter::allow_ip() {

    @firewall { "012 ipv4 accept bacula storagedaemon port from ${title}":
        provider => 'iptables',
        chain    => 'INPUT',
        proto    => 'tcp',
        dport    => 9103,
        source   => $title,
        action   => 'accept',
        tag      => 'default',
    }
}
