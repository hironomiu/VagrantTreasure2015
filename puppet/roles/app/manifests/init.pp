class app {
    include app::localtime
    include app::lang
    include app::os-user
    include app::os-group
    include app::db
    include app::sshd
    include app::iptables
    include app::php
    include app::httpd
    include app::mysql

    Class['app::os-group']
    -> Class['app::httpd']
    ~> Class['app::os-user']
}
