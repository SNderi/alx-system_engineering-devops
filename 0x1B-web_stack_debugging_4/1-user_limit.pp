# Web Stack debugging increase holberton user FD limits
exec { 'Change-hoberton-user-limits'
  command  => 'sudo sed -i "s/hard nofile 5/hard nofile 5000" /etc/security/limits.conf; sudo sed -i "s/soft nofile 4/soft nofile 4000" /etc/security/limits.conf',
  provider => shell
}
