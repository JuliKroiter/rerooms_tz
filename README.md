# README

ТЗ: https://docs.google.com/document/d/1VMwr4XIbDxUmvcLhKLH5PdiJCFo7CK3mJ4p4DubZDYs/edit

Production: https://sleepy-tor-49579.herokuapp.com/

* ruby: 2.6.2

* rails: 5.2.8

* DB: PostgreSQL

Для старта приложения: 

* Добавить /config/secrets.yml

* Добавить /config/database.yml

* run rake db:create

* run rake db:migrate

* run rake db:seed

* run server

API: 

GET /api/v1/menu_items -> Все пункты меню
GET /api/v1/menu_items?state=active -> Только активные пункты меню
