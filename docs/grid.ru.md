# Сетка

*Эти возможности определены в файле [_grid.scss](../lib/_grid.scss).*

## Функции

### grid-space

Возвращает размер отступа в соответствии с сеткой.

**Синтаксис**

    grid-space ( $size )

**Аргументы**

- `$size` — Размер отступа: `half`, `small`, `normal`, `large` или `x-large`.

**Возвращаемое значение**

Размер в px.

**Описание**

Функция вычисляет размер отступа в соответствии с настройками сетки. Размер вычисляется с помощью
геометрической прогрессии с первым членом равным [$grid-base-size](settings.ru.md#$grid-base-size) и
знаменателем [$grid-ratio](settings.ru.md#$grid-ratio).

С настройками по умолчанию функция возвращает следующие результаты:

$size     | Результат
----------|----------
`half`    | `4px`
`small`   | `8px`
`normal`  | `16px`
`large`   | `32px`
`x-large` | `64px`

### grid-size

> С 0.10.0 объявлена **устаревшей**. Вместо неё следует использовать [grid-space](#grid-space).

Возвращает размер по сетке.

**Синтаксис**

    grid-size ( $size )

**Аргументы**

- `$size` — Целое число (1, 2, 3…), задающее шаг размера сетки.

**Возвращаемое значение**

Размер в px.

**Описание**

Функция вычисляет размер указанного шага в соответствии с настройками сетки. Каждый шаг представляет
собой член геометрической прогрессии с первым членом равным
[$grid-base-size](settings.ru.md#grid-base-size) и знаменателем
[$grid-ratio](settings.ru.md#grid-ratio).

С настройками по умолчанию функция возвращает следующие результаты:

$size | Результат
------|----------
`1`   | `4px`
`2`   | `8px`
`3`   | `16px`
`4`   | `32px`

## Примеси

### grid-padding

> С 0.10.0 объявлена **устаревшей**. Вместо неё следует использовать [grid-space](#grid-space).

Задаёт элементу внутренние отступы по сетке.

**Синтаксис**

    grid-padding ( $padding )
    grid-padding ( $padding-vertical $padding-horizontal )
    grid-padding ( $padding-top $padding-horizontal $padding-bottom )
    grid-padding ( $padding-top $padding-right $padding-bottom $padding-left )

Задаёт внутренний отступ (padding) соответствующий указанному шагу размера сетки, вычисляемого с
помощью функции [grid-size](#grid-size). 

**Аргументы**

- `$padding-bottom` — Отступ снизу.
- `$padding-horizontal` — Отступ слева и справа.
- `$padding-left` — Отступ слева.
- `$padding-right` — Отступ справа.
- `$padding-top` — Отступ сверху.
- `$padding-vertical` — Отступ сверху и снизу.
- `$padding` — Отступ со всех сторон.

**Пример**

```scss
// При $grid-base-size: 8px;

@include block(foo) {
    @include grid-padding(1 2 3 4);
}
```

CSS:

```css
.foo {
    padding: 4px 8px 16px 32px;
}
```
