class db::config {
    include variables::config
    $passwd = $variables::config::passwd
    include mysql::service
    Class['mysql::service'] -> Class['db::config']
    exec { "db-create-demouser":
        unless => "/usr/bin/mysql -utechtrain -ptechtrain -e \"show databases;\"",
        command => "/usr/bin/mysql -uroot -p$passwd -e \"create database techtrain; grant all on techtrain.* to techtrain@localhost identified by 'techtrain';\"",
    }
}
