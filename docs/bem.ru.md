# БЭМ

*Эти возможности определены в файле [_bem.scss](../lib/_bem.scss).*

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
font-size: $base-font-size;
line-height: $base-line-height;
```

См. [Пример блока](#Пример-блока)

### element

Создаёт элемент с указанным именем. Может использоваться только внутри [block](#block). 

Синтаксис:

    element ( имя [, имя2] ) {
        стили
    }

Если указан только один аргумент, то имя класса будет составлено из имени текущего блока и этого аргумента. Если указано
два аргумента, то первый будет использован как имя блока, а второй как имя элемента.

См. [Пример блока](#Пример-блока)

### modifier

Создаёт модификатор блока или элемента. Может использоваться только внутри [block](#block) или
[element](#element). 

Синтаксис:

    modifier ( свойство [, значение ] ) {
        стили
    }

См. [Пример блока](#Пример-блока)

## Функции

### element-class

Возвращает имя класса элемента.

#### Аргументы

##### $block

Имя блока.

##### $element

Имя элемента.

#### Возвращаемые значения

Имя класса с учётом [настроек схемы именования](settings.ru.md#Настройки-бэм).


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
