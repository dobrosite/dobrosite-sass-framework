# Введение

Фреймворк состоит из ядра и шаблонов.
Ядро содержит примеси и функции, полезные при разработке сайта, задаёт некоторые основные стили.
Шаблоны содержат дополнительные примеси функции и стили для разработки сайтов определённого вида. 

## Файловая структура

Файловая структура проекта с использованием фреймворка состоит из слоёв, каждый из которых дополняет
или изменяет предыдущий.

Первый слой — слой ядра — содержит основные файлы, такие как:

- `_adaptive.scss`
- `_settings.scss`
- `_typography.scss`

Если вы используйте [шаблон](templates.ru.md), то он создаёт второй слой — слой шаблон — который
может, например, переопределить параметры типографики в своём файле `_typography.scss`.

Наконец, третий слой — слой пользователя — стили сайта, которые вы пишите самостоятельно. На этом
слое вы можете создать свой файл `_typography.scss` и переопределить или дополнить параметры
типографики, заданные предыдущими слоями (ядром и шаблоном).

### Стандартная файловая структура 

- `blocks/` — блоки
  - `_foo.scss` — блок
  - `_bar.scss` — блок
- `_adaptive.scss` — средства для адаптивной вёрстки
- `_all.scss` — файл, подключающий все остальные файлы
- `_misc.scss` — примеси и функции общего назначения
- `_reset.scss` — стили тегов HTML
- `_settings.scss` — настройки
- `_styles.scss` — библиотека готовых стилей
- `_typography.scss` — типографика

## Как работать с фреймворком

Вы можете организовать свои стили (слой пользователя) любым удобным вам образом, но фреймворк
разрабатывается в расчёте на то, что ваша файловая структура в целом соответствует
[стандартной](#Стандартная-файловая-структура).

Для начала разработки надо создать по меньшей мере один файл, собирающий всё воедино. В этой
документации такой файл будет называться `bundle.scss`.

Для работы фреймворка достаточно подключить библиотеку compass-mixins и ядро фреймворка:

```scss
// Подключаем Compass.
@import "path/to/node_modules/compass-mixins/lib/compass";
// Подключаем фреймворк.
@import "path/to/node_modules/dobrosite-sass-framework/lib/all";
```

Файл `lib/_all.scss` подключает все файлы ядра. Это позволяет использовать все возможности ядра,
такие как [адаптивная вёрстка](adaptive.ru.md), [типографика](typography.ru.md) или
[БЭМ](bem.ru.md). При необходимости можно подключать только некоторые файлы (см.
[Файловая структура](#Файловая-структура)).

Также вы можете подключить подходящий [шаблон](templates.ru.md), задающий более конкретные стили и
дающий дополнительные возможности:

```scss
@import "path/to/node_modules/compass-mixins/lib/compass";
@import "path/to/node_modules/dobrosite-sass-framework/lib/all";
// Подключаем шаблон.
@import "path/to/node_modules/dobrosite-sass-framework/lib/template/classic/all";
```

Следующий шаг — добавление [блоков](bem.ru.md). Блоки рекомендуется размещать непосредственно в
папке `blocks` (`blocks/_foo.scss`) или в её подпапках с именами блоков (`blocks/foo/_foo.scss`).
Блоки должны подключаться после ядра и шаблона:

```scss
@import "path/to/node_modules/compass-mixins/lib/compass";
@import "path/to/node_modules/dobrosite-sass-framework/lib/all";
@import "path/to/node_modules/dobrosite-sass-framework/lib/template/classic/all";

// Подключаем блоки слоя пользователя.
@import "blocks/foo";
@import "blocks/page";
@import "blocks/...";
```

И ядро и шаблоны имеют [настройки](settings.ru.md), которые вы можете поменять в своём слое. Для
этого желательно создать файл `_settings.scss`, который следует подключить **до** ядра:

```scss
// Подключаем настройки слоя пользователя.
@import "settings";

@import "path/to/node_modules/compass-mixins/lib/compass";
@import "path/to/node_modules/dobrosite-sass-framework/lib/all";
```

Также вы можете переопределить или дополнить любую функциональность ядра и/или шаблона, создав и
подключив соответствующие файлы:

```scss
@import "settings";

@import "path/to/node_modules/compass-mixins/lib/compass";
@import "path/to/node_modules/dobrosite-sass-framework/lib/all";
@import "path/to/node_modules/dobrosite-sass-framework/lib/template/classic/all";

// Подключаем переопределения слоя пользователя.
@import "typography";
@import "...";

@import "blocks/foo";
@import "blocks/page";
@import "blocks/...";
```
