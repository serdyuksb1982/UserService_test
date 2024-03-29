# UserService_test
https://github.com/serdyuksb1982?tab=repositories

Микросервис UserService должен обладать следующим функционалом:

CRUD операции над пользователями;
CRUD операции над ролями пользователей (ROLE_ADMIN, ROLE_USER);
OAuth авторизацией пользователей в системе;
API, которое может просматривать пользователь с ролью ADMIN;
API, которое может просматривать пользователь с ролью USER;
все данные должны храниться в БД PostgreSQL;
интеграцией с FlywayDB;
должна быть реализована одна миграция, которая будет создавать дефолтных пользователей (user, admin) и дефолтные роли (ROLE_ADMIN, ROLE_USER).

Используемые технологии и инструменты:
Java 15, Intellij Idea (11), maven, mysql (временно, заменю на postgress позже). Front на основе FreeMarker Templates.

Spring Boot Web Application (MVC): Добавляем панель администрирования пользователей и управляем правами доступа пользователей с помощью аннотации hasAuthority из Spring Security (user, admin). Cписок ролей (enum Role) и страницу, отображающую список пользователей приложения. 
@PreAuthorize("hasAuthority('ADMIN')") ограничит доступ к панели администратора и оставит его только для пользователей с ролью ADMIN. Но эта аннотация не будет работать до добавления конфигурационной аннотации.
@EnableGlobalMethodSecurity(prePostEnabled = true) На класс конфигурации WebSecurityConfig/

Api представляет собой чат. Функции: регистрация пользователей, отправка сообщений, фильтрация сообщений по тегам. Роли USER и ADMIN. ADMIN может менять роли, просматривать список ролей.

Добавлена аутентификация на основе почты (yandex).

Миграция базы данных в mySQL на основе flywaydb. Всего четыре миграции:
  V1__Init_DB.sql - создание трёх таблиц: message, usr, user_role;
  
  V2__Add_default_role.sql - создание дефолтных пользователей (user, admin);
  
  V3__Encode_passwords.sql - кодировка паролей MD5 (для MySQL);
  
  V4__Add_subscriptions_table.sql - создание таблицы для ManyToMany связей между пользователями (обеспечение подписок).
  
Права USER, возможность регистрации с использованием email, добавление сообщений, просмотр собственных сообщений, подписка/отписка на чужие сообщения, изменения своих сообщений. (Profile, My messages, Messages, Home).
Права АDMIN, все права и возможности USER + просмотр UserList, с возможность изменения прав пользователей.
  
Добавлены классы интеграционного тестирования junit, MockMvc.

#ОПИСАНИЕ API
для получения инфрации о сузествующих endpoint нужно перейти по аддресу
http://host:port/swagger-ui/
http://127.0.0.1:8081/swagger-ui/