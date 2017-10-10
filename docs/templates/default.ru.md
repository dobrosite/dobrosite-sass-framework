# default

Шаблон стилей типового сайта.

## Настройки

### $tpl-page-body-max-width

Наибольшая ширина до которой может увеличиваться элемент [page__body](#page__body).

Возможные значения:

- [единицы расстояния](https://www.w3.org/TR/css3-values/#lengths);
- false` — наибольшая ширина не ограничена.

По умолчанию [$device-desktop-width](../settings.ru.md#Размеры-устройств) − 2 ×
[$rem](../settings.ru.md#Основной-размер). 

### $tpl-page-body-min-width

Наименьшая ширина до которой может уменьшаться элемент [page__body](#page__body).

По умолчанию [$device-phone-width](../settings.ru.md#Размеры-устройств).

Возможные значения:

- [единицы расстояния](https://www.w3.org/TR/css3-values/#lengths);
- false` — наименьшая ширина страницы не ограничена.

## Блоки

### page

Страница. Класс должен применяться к тегу `body`.

Пример разметки:

```html
<body class="page">
    <div class="page__body">
        <header class="page__header">…</header>
        <main class="page__main">…</main>
        <footer class="page__footer">…</footer>
    </div>
</body>
```

#### page__body

Тело страницы.
