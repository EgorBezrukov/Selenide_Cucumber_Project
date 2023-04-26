#language: ru

Функционал: Проверка функционала формы регистрации

  Предыстория: открывается сайт
    Пусть пользователь открывает сайт "https://www.saucedemo.com/"

  @All
  @CheckRegistrationForm

  Сценарий: Проверить, что при вводе правильного логина и пароля пользователь успешно авторизуется

    * h1(1. Выполняется вход)
    Когда пользователь вводит в поле "Логин" знчение "standard_user"
    И он вводит в поле "Пароль" знчение "secret_sauce"
    И он нажимает на "login-button"

    * h1(2. Проверка входа)
    Тогда пользователь проверяет что адрес сайта равен "https://www.saucedemo.com/inventory.html"

  @All
  @CheckRegistrationFormAll
  Сценарий: Проверить, что при попытке войти без логина и пароля отображается сообщение об ошибка

    * h1(1. Выполняется вход)
    Когда пользователь вводит в поле "Логин" знчение ""
    И он вводит в поле "Пароль" знчение ""
    И он нажимает на "login-button"

    * h1(2. Проверка сообщения об ошибке)
    Тогда пользователь запоминает значение поля "//h3"
    И он проверяет что значение "Epic sadface: Username is required" равно сохраненному знечению

  @All
  @CheckRegistrationFormAll
  Сценарий: Проверить, что при вводе неправильного логина или пароля отображается сообщение об ошибке

    * h1(1. Выполняется вход)
    Когда пользователь вводит в поле "Логин" знчение "efsd"
    И он вводит в поле "Пароль" знчение "1324"
    И он нажимает на "login-button"

    * h1(2. Проверка сообщения об ошибке)
    Тогда пользователь запоминает значение поля "//h3"
    И он проверяет что значение "Epic sadface: Username and password do not match any user in this service" равно сохраненному знечению