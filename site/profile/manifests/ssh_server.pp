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
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDHTcX6us1zc6uRywgWBvXMNgu2keHcS/06gs8yBClrrcPJGPC/Jxo8w84akvjZn/fcTtgrnu3T/fxZjH2DKdcrMNvQeYtVbdiY3QPAFNcf1VzUTmwUU3K2iOF4PQHr3PA334kEv5vrMBGDUfaaWLo/l5nppO51fn9Mg4S3H60bKajZzIuRHUcQ3GLsO+cxaG2+jI/0jH7WQ5la0WECMzC6V4JsNcL2LpsHxJ1kzds/vU6wa7RE772EufN2vFsZ1AT9CcaqG7dnWpXSqCx0fHrjIRfT9r9PXHlOHx7hPU74El19OdmpIvKYUWRb2C4qIbzulaC6BA/Z9wVThtNOtNPV',
  }  
}
