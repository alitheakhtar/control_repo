class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQD0uAFvc4jBs8j1dQbGY1K2LD6IIVnOZavjYEO/Mf8rIWqAgzFjYvFkBBSB8bcD/vHRBVLhxLq9tSzcEl3Rg0IWEUGShqGKB6EMZeYyDc7//7aI9KilH8squPuJHJw8KIrL976yYVLkSciyrxRTjxPuiwYy2c34E/4Y/iK2tgLXjCWwIcNnl6CbI95+69XPCXtE2a4segHTpNx5i9RJFvzt81JWnDjfrlPwb6YemQJEM/fCaR945Otoovn1u6okSDcpG76IOWznIor9Qf2Kwuvc61HcckYvLb7ah7/hyD2KyylM/CNlOdjCmcmw7qzfX52kTqNJXvc1FxrmmpRr2xAd',
  }  
}
