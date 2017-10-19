# Введение

## Рекомендуемая файловая структура

- `blocks/` — блоки вашего сайта
  - `_foo.scss` — собственный блок сайта
  - `_page.scss` — переопределение блока [page](templates/default.ru.md#page) из шаблона
- `_settings.scss` — ваши настройки и переопределение [настроек фреймворка](settings.ru.md) и
  [шаблона](templates.ru.md)
- `bundle.scss` — главный файл

### bundle.scss

```scss
@import "settings";

@import "path/to/node_modules/compass-mixins/lib/compass";
@import "path/to/node_modules/dobrosite-sass-framework/lib/all";
@import "path/to/node_modules/dobrosite-sass-framework/lib/template/default/all";

@import "blocks/foo";
@import "blocks/page";
```
