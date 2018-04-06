# История изменений

Формат этого файла соответствует рекомендациям [Keep a Changelog](http://keepachangelog.com/en/1.0.0/).
Проект использует [семантическое версионирование](http://semver.org/spec/v2.0.0.html).

## Не выпущено

## 0.10.0 — 2018-04-06

### Удалено

- Удалены настройки:
  - `$heading-margin-top-base`
  - `$heading-margin-top-ratio`
  - `$heading-margin-bottom-base`
  - `$heading-margin-bottom-ratio`

### Изменено

- Для тега `p` больше не устанавливаются свойства `font-size` и `line-height`.
- Функция `grid-size` объявлена устаревшей.
- Примесь `grid-padding` объявлена устаревшей.

### Добавлено

- Функция [grid-space](docs/grid.ru.md#grid-space).
- Константа [DEVICES](docs/constants.ru.md#$devices).


## 0.9.0 — 2017-11-28

### Изменено

- Примесь [block](docs/bem.ru.md#block) больше не устанавливает свойства `font-size` и
  `line-height`.


## 0.8.1 — 2017-11-26

### Исправлено

- Неправильно вычислялись внешние отступы для заголовков.
 

## 0.8.0 — 2017-11-26

### Исправлено

- Размер заголовков h5 и h6 при увеличении размера экрана уменьшался, а не увеличивался.
- Не было возможности управлять внешними отступами у заголовков.
 

## 0.7.1 — 2017-11-23

### Исправлено

- Функция [grid-size](docs/grid.ru.md#grid-size) возвращала неправильное значение при передаче
  аргумента `0`.


## 0.7.0 — 2017-11-23

### Добавлено

- [Работа с сеткой](docs/grid.ru.md).
- Функция [element-class](docs/bem.ru.md#element-class).

### Изменено

- Примесь [heading-font-size](docs/typography.ru.md#heading-font-size) теперь округляет значения
  `font-size`.
- Примесь [padding](docs/misc.ru.md#padding) объявлена устаревшей.

## 0.6.0 — 2017-11-09

### Изменено

- Файл `lib/_generic.scss` переименован в `lib/_misc.scss`.

### Добавлено

- Добавлена примесь [link-property](docs/misc.ru.md#link-property).

