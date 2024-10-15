1) Скачать | git clone -b docker https://github.com/FlamesKes/bot.git
   
2) Код создавался с расчетом пользователя root поэтому на машине должно быть разрешено подключение по ssh через root

3) Положить .env файл в корень(обязательные параметры:
RM_HOST = ip машинки на которой запускается компостер
RM_USER = root
DB_USER = postgres
DB_PASSWORD = 1
DB_HOST = postgres
DB_PORT = 5432
DB_DATABASE = pts
DB_REPL_USER = repl_user
DB_REPL_PASSWORD = 1
DB_REPL_HOST = postgres-repl
DB_REPL_PORT = 5422)
   
4) Запустить | docker compose up --build
   
5) Идти в бота
