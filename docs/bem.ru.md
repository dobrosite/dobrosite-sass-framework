# БЭМ

Настройки:

- [Настройки БЭМ](settings.ru.md#Настройки-БЭМ)


## Примеси

### block

Создаёт блок с указанным именем.

Синтаксис:

    block ( имя ) {
        Стили
    }

Задаёт свойства:

```scss
font-size: $text-font-size;
line-height: $text-line-height;
```

См. [Пример блока](#Пример-блока)

### element

Создаёт элемент с указанным именем. Может использоваться только внутри [block](#block). 

Синтаксис:

    element ( имя ) {
        стили
    }

См. [Пример блока](#Пример-блока)

### modifier

Создаёт модификатор блока или элемента. Может использоваться только внутри [block](#block) или
[element](#element). 

Синтаксис:

    modifier ( свойство [, значение ] ) {
        стили
    }

См. [Пример блока](#Пример-блока)


## Примеры

### Пример блока

```scss
@include block(foo) {
    display: block;
    
    @include element(bar) {
        display: inline;
        
        @include modifier(important) {
            font-weight: bolder;
        }
    }
    
    @include modifier(size, large) {
        font-size: 1.5rem;
    }
}
```

CSS:

```css
.foo {
    font-size: 1rem;
    display: block;
}
.foo__bar {
    display: inline;
}
.foo__bar_important {
    font-weight: bolder;
}
.foo_size_large {
    font-size: 1.5rem;
}
```
