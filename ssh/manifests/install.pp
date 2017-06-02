class ssh::install {
#      if  $::osfamily == 'Redhat' {
#         $pack = 'openssh'}
#       else {
#         $pack = 'ssh'
#       }
#       case $::osfamily {
#          'Redhat' : {$pack = 'openssh'}
#          'Debian' : {$pack = 'ssh'}
#           default : {warning('os not supported')}
#       }
      $pack = $::osfamily? {
       'Redhat' => 'openssh',
       'Debian' => 'ssh',
       }
       package {'openssh':
       ensure => present,
          }
}
