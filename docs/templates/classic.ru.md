# classic

Шаблон классического сайта с «шапкой», «подвалом» и одной или двумя боковыми панелями.

## Настройки

### $tpl-page-main-sidebar-ratio

По умолчанию `5`

Отношение ширины главной части страницы к ширине боковых панелей.

### $tpl-page-body-max-width

Наибольшая ширина до которой может увеличиваться элемент [page__body](#page__body).

Возможные значения:

- [единицы расстояния](https://www.w3.org/TR/css3-values/#lengths);
- `false` — наибольшая ширина не ограничена.

По умолчанию [$device-desktop-width](../settings.ru.md#device-desktop-width) − 2 ×
[$base-font-size](http://compass-style.org/reference/compass/typography/vertical_rhythm/#const-base-font-size). 

### $tpl-page-body-min-width

Наименьшая ширина до которой может уменьшаться элемент [page__body](#page__body).

По умолчанию [$device-phone-width](../settings.ru.md#device-phone-width).

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
