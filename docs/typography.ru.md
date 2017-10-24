# Типографика

*Эти возможности определены в файле [_typography.scss](../lib/_typography.scss).*

## Заголовки

### heading-font-size

Примесь позволяет задать элементу размер шрифта, соответствующий размеру заголовка указанного
уровня.

Пример:

```scss
@include element(title) {
    @include heading-font-size(2);
}
```
