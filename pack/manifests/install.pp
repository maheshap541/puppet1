class pack::install {
      if $::hostname == server2 {
         $rpm = 'tree'}
       else {
         $rpm = 'vsftpd'
           }
    package {$rpm:
       ensure => present,
      }
}
