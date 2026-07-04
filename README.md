# architecture-propdevelopment

# Task 1-3
Просто файлы, без дополнительной логики

# Task 4
Для применения настроек по ролям из папки task_4 запустить:

bash scripts.sh

# Task 5
1. Для применения сетевых политик из папки task_5 запустить:

bash scripts.sh

2. после этого зайти в любой из четырех Pod-ов, например Pod-а front-end-app
kubectl exec -it -n net-test <наименование Pod-а> -- sh    

3. выполнить внутри пода в оболочки sh команды вида 
wget -qO- --timeout=2 http://service-back-end-api
wget -qO- --timeout=2 http://service-admin-back-end-api
wget -qO- --timeout=2 http://service-front-end-app
wget -qO- --timeout=2 http://service-admin-front-end-app

ответ будет получен только по одной команде (в зависимости от того, с какого Pod-а запускать команды - при запросе к доступному сервису)