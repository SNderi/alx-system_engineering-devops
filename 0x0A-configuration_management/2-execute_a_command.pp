# Creates a manifest that kills a process named killmenow.

exec { 'pkill':
    command  => 'pkill -f killmenow',
    path     => '/user/bin',
    provider => 'shell',
    returns  => [0, 1],
}