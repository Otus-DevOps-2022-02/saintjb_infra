# saintjb_infra
saintjb Infra repository

Для подключения к узлу, находящимся за бастионом достаточно выполнить одну команду:
``` bash
ssh -A bastion_ip -t ssh internal_host
```
Вместо bastion_ip укажите публичный IP адрес bastion-сервера.

Вместо internal_host укажите внутренний IP адрес сервера во внутреннем периметре.

Подключение к someinternalhost с помощью короткой команды
Команды вида ssh someinternalhost

Для подключения из консоли при помощи команды вида ssh someinternalhost из локальной консоли рабочего устройства, необходимо выполнить следующие действия на локальном клиенте someinternalhost:

1) Создать локальный конфигурационный файл ssh и назначить файлу права доступа:
```
touch ~/.ssh/config
chmod 0700 ~/.ssh/config
```
2) Открыть файл и описать секцию относящуюся к серверу файл:
```
vi ~/.ssh/config
```
```
Host someinternalhost
     HostName internal_host
     Port 22
     ForwardX11 no
     ProxyJump bastion_ip 
```
bastion_ip - IP адрес бастиона, internal_host- IP адрес сервера в локальном периметре.

Проверить подключение:
```
ssh someinternalhost
```
# bastion data
В связи с недоступностью репозитория, запуск проводился при помощи docker-образа, добавление сертификата Lets Encrypt (доп задание) не проводилось
```
bastion_IP = 178.154.195.10
someinternalhost_IP = 10.129.0.6
```
# ДЗ 4
Данные для проверки приложения
```
testapp_IP = 51.250.15.174
testapp_port = 9292
```