1) Скачать | git clone -b docker https://github.com/FlamesKes/bot.git
2) Перейти в bot/ и создать образ бота | cd bot && docker build -t bot_image .
3) Перейти в db/ и создать образ бд | cd .. && cd db && docker build -t db_image .
4) Перейти в db_repl/ и создать образ реплики | cd .. && cd db_repl && docker build -t db_repl_image .
5) Положить .env файл в корень
6) Код создавался с расчетом пользователя root поэтому на машине должно быть разрешено подключение по ssh через root
7) Запустить | docker compose up -d
8) Идти в бота
