# Creates a manifest that kills a process named killmenow.

exec { 'pkill':
    command  => '/user/bin/pkill killmenow',
}
