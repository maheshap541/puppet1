class pack::service {
    service {'vsftpd':
    ensure => running,
    require => Package['vsftpd'],
}
}
