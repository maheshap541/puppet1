class motd {
      file {'/etc/motd':
      source => 'puppet:///modules/motd/motd',
         }
      $game1 = 'cricket'
      notify {"The name of the game is ${game1}":}
}
