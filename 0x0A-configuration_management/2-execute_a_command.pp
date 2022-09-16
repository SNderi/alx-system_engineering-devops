# Creates a manifest that kills a process named killmenow.

exec { 'pkill':
    command  => '/usr/bin/pkill -f killmenow',
    provider => 'shell',
    returns  => [0, 1],
}
