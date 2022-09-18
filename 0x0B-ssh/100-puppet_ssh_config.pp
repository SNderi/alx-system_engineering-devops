# Sets up client SSH configuration file to connect to a server without a password

include stdlib
file_line { 'IdentityFile'
    path    => '/etc/ssh/ssh_config',
    line    => '    IdentityFile ~/.ssh/school',
    replace => true,
}

file_line { 'PasswordAuthenticate'
    path    => '/etc/ssh/ssh_config',
    line    => '    PasswordAuthentication no'
    replace => true,
