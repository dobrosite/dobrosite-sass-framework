# Шаблоны

Фреймворк предоставляет набор шаблонов на основе которых можно строить свою вёрстку. Шаблоны
расположены в папке `template` и могут быть подключены следующим образом:

```scss
@import "node_modules/dobrosite-sass-framework/lib/template/имя_шаблона/all";
```
Каждый шаблон состоит из отдельных файлов, которые можно подключать по отдельности:

```scss
@import "node_modules/dobrosite-sass-framework/lib/template/имя_шаблона/reset";
```

## Структура шаблона

- `_settings.scss` — настройки шаблона.
- `_reset.scss` — сброс стилей для тегов HTML.
- `_typography.scss` — оформление текста.
