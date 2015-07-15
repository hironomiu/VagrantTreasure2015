class os-user::config{
    user { 'demouser':
        ensure => present,
        gid => 'developer',
        comment => 'demouser',
        home => '/home/demouser',
        password => '$6$pFK3rN4Bq6zFxgej$ykSV5K22XM9BbizVi3hmxWUEioph/45fxATtLw1T9qMvVStWxs4cbGjTfW7Pa8ROXroj04lUJLKNAfO2pL.pN/',
        managehome => true,
        shell => '/bin/bash',
        require => Group['developer'],
    }

    file { '/home/demouser/.ssh':
        ensure => directory,
        owner => 'demouser',
        group => 'developer',
        mode => '0700',
        require => User["demouser"]
    }

    exec { "demouser chmod" :
        user => 'root',
        path => ['/bin'],
        command => "chmod 755 /home/demouser",
        timeout => 999,
        require => User["demouser"]
    }
    user { 'group-a':
        ensure => present,
        gid => 'developer',
        comment => 'group-a',
        home => '/home/group-a',
        password => '$6$oC1HM4MyTJhk0t2.$JbLuZ6NI9lC4KY.LhSg1rTQb5coYXXCLS30tT/sAgs4UC5s3rrASCLNGzDsKTVq.24HtR1o9Uy.jrOzRjQDVO1',
        managehome => true,
        shell => '/bin/bash',
    }

    file { '/home/group-a/.ssh':
        ensure => directory,
        owner => 'group-a',
        group => 'developer',
        mode => '0700',
        require => User["group-a"]
    }

    exec { "group-a chmod" :
        user => 'root',
        path => ['/bin'],
        command => "chmod 755 /home/group-a",
        timeout => 999,
        require => User["group-a"]
    }

    user { 'group-b':
        ensure => present,
        gid => 'developer',
        comment => 'group-b',
        home => '/home/group-b',
        password => '$6$cnENVQY6iqOjXTqd$V9SGWLuepd0nR8ZkYoPsXeA5P0EW6RnsgSz0/57bmLE92vn67Gey6i.UyOoYs/Q.D08ph2sdZn62aKD0iEAfS0',
        managehome => true,
        shell => '/bin/bash',
    }

    file { '/home/group-b/.ssh':
        ensure => directory,
        owner => 'group-b',
        group => 'developer',
        mode => '0700',
        require => User["group-b"]
    }

    exec { "group-b chmod" :
        user => 'root',
        path => ['/bin'],
        command => "chmod 755 /home/group-b",
        timeout => 999,
        require => User["group-b"]
    }

    user { 'group-c':
        ensure => present,
        gid => 'developer',
        comment => 'group-c',
        home => '/home/group-c',
        password => '$6$jbEH41Nb8HQnH4ew$jjyMbwErVdINSRIRl30bDMgj4i0fA0UPj/C0fiN.NBqnmnxms0ipvS6ROfgXn3jIgEwsWcgndFlORpog4OpJT1',
        managehome => true,
        shell => '/bin/bash',
    }

    file { '/home/group-c/.ssh':
        ensure => directory,
        owner => 'group-c',
        group => 'developer',
        mode => '0700',
        require => User["group-c"]
    }

    exec { "group-c chmod" :
        user => 'root',
        path => ['/bin'],
        command => "chmod 755 /home/group-c",
        timeout => 999,
        require => User["group-c"]
    }

    user { 'group-d':
        ensure => present,
        gid => 'developer',
        comment => 'group-d',
        home => '/home/group-d',
        password => '$6$x7Xp9225V49WPGzc$3dNYCmpDuB2H7vNRMsczoTJi.s2m5a6S2qcwIxFNBhTLN.C3X.wokEyoB55zifpLC5VA8jLjjK73uAz4s8qmx0',
        managehome => true,
        shell => '/bin/bash',
    }

    file { '/home/group-d/.ssh':
        ensure => directory,
        owner => 'group-d',
        group => 'developer',
        mode => '0700',
        require => User["group-d"]
    }

    exec { "group-d chmod" :
        user => 'root',
        path => ['/bin'],
        command => "chmod 755 /home/group-d",
        timeout => 999,
        require => User["group-d"]
    }


    user { 'group-e':
        ensure => present,
        gid => 'developer',
        comment => 'group-e',
        home => '/home/group-e',
        password => '$6$qYisSb32Vxlk/51W$tkDKI7EsEmUoh9nhs8OLOIbjwexEftIqXyV0EuFHDLXZENOZ5vNSzY8tfjz.9oueijZR1qucjzGlIlPIAiuuE0',
        managehome => true,
        shell => '/bin/bash',
    }

    file { '/home/group-e/.ssh':
        ensure => directory,
        owner => 'group-e',
        group => 'developer',
        mode => '0700',
        require => User["group-e"]
    }

    exec { "group-e chmod" :
        user => 'root',
        path => ['/bin'],
        command => "chmod 755 /home/group-e",
        timeout => 999,
        require => User["group-e"]
    }

}

