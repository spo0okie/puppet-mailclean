class mailclean {
  file {"/opt/mailClean":
    ensure  => directory,
    mode  => '0755',
    owner  => 'root',
  } ->
  file {"/opt/mailClean/mailClean.sh":
    ensure  => file,
    source  => 'puppet:///modules/mailclean/mailClean.sh',
    mode  => '0555',
  } ->
  cron {'clean local mail':
    command => '/opt/mailClean/mailClean.sh',
    user    => root,
    hour    => '*/4',
  }
}

