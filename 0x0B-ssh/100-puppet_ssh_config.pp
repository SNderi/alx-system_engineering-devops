# Sets up client SSH configuration file to connect to a server without a password

include stdlib
file_line { 'IdentityFile'
    path  => '/etc/ssh/ssh_config',
    line  => '    IdentityFile ~/.ssh/school',
}

file_line { 'PasswordAuthenticate'
    path  => '/etc/ssh/ssh_config',
    line  => '    PasswordAuthentication no'
