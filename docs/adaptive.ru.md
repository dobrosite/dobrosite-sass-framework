# Адаптивная вёрстка

*Эти возможности определены в файле [_adaptive.scss](../lib/_adaptive.scss).*

## Определение ширины устройства

Фреймворк предоставляет пять примесей для разделения стилей по размерам экрана. При этом фреймворк
рассчитан на использование подхода
[сначала мобильные](https://ru.wikipedia.org/wiki/Адаптивный_веб-дизайн#.D0.A1.D0.BD.D0.B0.D1.87.D0.B0.D0.BB.D0.B0_.D0.BC.D0.BE.D0.B1.D0.B8.D0.BB.D1.8C.D0.BD.D1.8B.D0.B5_.28.C2.ABMobile_first.C2.BB.29).

### for-phone-and-wider

Примесь для указания стилей для экранов [$device-phone-width](settings.ru.md#device-phone-width) и
шире.

### for-tablet-portrait-and-wider

Примесь для указания стилей для экранов
[$device-tablet-portrait-width](settings.ru.md#device-tablet-portrait-width) и шире.

### for-tablet-landscape-and-wider

Примесь для указания стилей для экранов
[$device-tablet-landscape-width](settings.ru.md#device-tablet-landscape-width) и шире.

### for-desktop-and-wider

Примесь для указания стилей для экранов
[$device-desktop-width](settings.ru.md#device-desktop-width) и шире.

### for-wide-screens

Примесь для указания стилей для экранов
[$device-widescreen-width](settings.ru.md#device-widescreen-width) и шире.

### Пример

```scss
@include block(header) {
    // Стили для всех устройств.
    
    @include for-phone-and-wider {
        // Стили для телефонов и более широких экранов.
    }
    
    @include for-tablet-portrait-and-wider {
        // Стили для вертикальных планшетов и более широких экранов.
    }
    
    @include for-tablet-landscape-and-wider {
        // Стили для горизонтальных планшетов и более широких экранов.
    }
    
    @include for-desktop-and-wider {
        // Стили для настольных компьютеров и более широких экранов.
    }
    
    @include for-wide-screens {
        // Стили для широкоформатных экранов.
    }
}
```

## Масштабирование

TODO
