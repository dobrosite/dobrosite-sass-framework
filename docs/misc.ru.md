# Разное

*Эти возможности определены в файле [_misc.scss](../lib/_misc.scss).*

## Примеси

### link-property

Позволяет одной строкой задавать любые свойства ссылки для разных её состояний.

Синтаксис:

    link-property ( свойство, link [, hover [, visited [, focus [, active ]]]] )

Обязательными аргументами являются только имя свойства и его значение по умолчанию (`link`). Для остальных состояний
действуют следующие правила:

1. если `hover` или `visited` не указаны, то их значение совпадает с `link`;
2. если `focus` или `active` не указаны, то они не задаются.

Пример:

```scss
@include block(foo) {
    @include element(link) {
        @include link-property(color, blue);
        @include link-property(text-decoration, underline, none);
    }
}
```

CSS:

```css
.foo__link {
  color: blue;
  text-decoration: underline;
}

.foo__link:visited {
  color: blue;
  text-decoration: underline;
}

.foo__link:hover {
  color: blue;
  text-decoration: none;
}
```


### padding

Задаёт элементу внутренние отступы, кратные размеру сетки.

Синтаксис:

    padding ( отступ )
    padding ( вертикальный_отступ горизонтальный_отступ )
    padding ( верхний_отступ горизонтальный_отступ нижний_отступ )
    padding ( верхний_отступ правый_отступ нижний_отступ левый_отступ )

Задаёт внутренний отступ (padding) кратно половине основного размера шрифта
([$base-font-size](http://compass-style.org/reference/compass/typography/vertical_rhythm/#const-base-font-size)). 

Пример:

```scss
// При $base-font-size: 16px;

@include block(foo) {
    @include padding(1 2);
}
```

CSS:

```css
.foo {
    padding: 8px 16px;
}
```
