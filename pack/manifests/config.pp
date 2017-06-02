class pack::config {
    file {'/etc/vsftpd/vsftpd.conf':
    source => 'puppet:///modules/pack/vsftpd.conf',
    notify => Service['vsftpd'],
   }
}
