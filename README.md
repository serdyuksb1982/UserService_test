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
Java 15, Intellij Idea, maven, mysql (временно, заменю на postgress позже). Front на основе FreeMarker Templates.

Spring Boot Web Application (MVC): Добавляем панель администрирования пользователей и управляем правами доступа пользователей с помощью аннотации hasAuthority из Spring Security (user, admin). Cписок ролей (enum Role) и страницу, отображающую список пользователей приложения. 
@PreAuthorize("hasAuthority('ADMIN')") ограничит доступ к панели администратора и оставит его только для пользователей с ролью ADMIN. Но эта аннотация не будет работать до добавления конфигурационной аннотации.
@EnableGlobalMethodSecurity(prePostEnabled = true) На класс конфигурации WebSecurityConfig
