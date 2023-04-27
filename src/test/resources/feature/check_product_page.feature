#language: ru

Функционал: Проверка функционала траницы с продуктами

  Предыстория: открывается сайт
    Пусть пользователь открывает сайт "https://www.saucedemo.com/"

  @All
  @CheckProductPageAll
  @CheckProductPage
  Сценарий: Проверить, что все продукты отображаются на странице

    * h1(1. Выполняется вход)
    Когда пользователь заполняет поле "user-name" значением "standard_user"
    И он заполняет поле "password" значением "secret_sauce"
    И он нажимает на "login-button"

    * h1(2. Проверка отображени яэлементов)
    Тогда пользователь проверяет что количество элементов на странице ".inventory_item_name" равно "6"


  @All
  @CheckProductPageAll
  @CheckProductPageSortHiLo
  Сценарий: Проверить, что продукты можно отсортировать по цене от большего к меньшему
    * h1(1. Выполняется вход)
    Когда пользователь заполняет поле "user-name" значением "standard_user"
    И он заполняет поле "password" значением "secret_sauce"
    И он нажимает на "login-button"

    * h1(2.Проверка правильной сортировки)
    Тогда пользователь сортирует элементы страницы ".product_sort_container" по параментру "hilo"

  @All
  @CheckProductPageAll
  @CheckProductPageSortLoHi
  Сценарий: Проверить, что продукты можно отсортировать по цене от меньшего к большему
    * h1(1. Выполняется вход)
    Когда пользователь заполняет поле "user-name" значением "standard_user"
    И он заполняет поле "password" значением "secret_sauce"
    И он нажимает на "login-button"

    * h1(2. Проверка правильной сортировки)
    Тогда пользователь сортирует элементы страницы ".product_sort_container" по параментру "lohi"

  @All
  @CheckProductPageAll
  @CheckProductPagePrice
  Сценарий: Сравниваем значение цены с ожидаемым резульатом
    * h1(1. Выполняется вход)
    Когда пользователь заполняет поле "user-name" значением "standard_user"
    И он заполняет поле "password" значением "secret_sauce"
    И он нажимает на "login-button"

    * h1(2. Запоминаем значение цены и сравниваем с ожидаемым результатом)
    И пользователь запоминает значение поля ".inventory_item_price"
    И пользователь проверяет что значение "$29" равно сохраненному знечению