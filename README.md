1) Скачать git | git clone -b ansible https://github.com/FlamesKes/bot.git
2) Создать пользователя ansible и выдать sudo права
3) Изменить ip в primary/pg_hba.conf на свой(слейв)
4) Если используется версия postgresql отличная от 16ой, также поменять пути к файлам в primary/postgresql.conf и repl/postgresql.conf(заменить в путях с 16 на свою)
5) Изменить путь к inventory на свой в ansible.cfg
6) Разрешить подключекние по ssh для машинки с бд через root(писал код питона с расчетом пользователя root(в командах не прописывал sudo))
7) Изменить RM_HOST и DB_HOST в bot.env на одинаковые!!!(код писался с расчетом мониторинга сервера с бд)
8) Изменить ansible_host и ansible_password на свои в inventory(машинка с ботом, машинка с бд, машинка реплика)
9) Изменить ip на ip своей основной машинки с бд в команде в playbook_tg_bot.yml у хоста replica(она в самом низу файла)(pg_basebackup -R -h 192.168.31.60 -U repl_user -D /var/lib/postgresql/16/main -P)
10) Если используется версия postgresql отличная от 16ой, также поменять пути к файлам у хостов primary и replica в playbook_tg_bot.yml(поменять все 16 в путях на свое)
11) Запустить плейбук | ansible-playbook playbook_tg_bot.yml | ansible-playbook playbook_tg_bot.yml -K (в случае если жалуется на sudo пароль(тогда на всех машинках у пользователя ansible должен быть один и тот же пароль)
