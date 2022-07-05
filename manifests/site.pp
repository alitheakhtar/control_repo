node default {
file {'/root/README':
  ensure => file,
  contnet => 'This is a readme',
  owner => 'root',
  }  
}
node 'master.puppet.vm' {
  include role::master_server
}
