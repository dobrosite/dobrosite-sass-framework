# Настройки

Настройки представлены переменными SASS, которым вы можете задать собственные значения.

**Важно!** Задавать значения этим переменным надо **до** подключения фреймворка.

Правильно:

```scss
$some-setting: custom-value;

@import "node_modules/dobrosite-sass-framework/lib/all";
```

Неправильно:

```scss
@import "node_modules/dobrosite-sass-framework/lib/all";

$some-setting: custom-value;
```

## Размеры устройств

Задаёт переходные точки (breakpoints), определяющие ширину различных устройств. За основу взят
подход, изложенный Дэвидом Гилбертсоном в статье
[The 100% correct way to do CSS breakpoints](https://medium.com/p/88d6a5ba1862)
([перевод на русский](http://css-live.ru/articles-css/pravilnye-kontrolnye-tochki-v-css.html)).

Используется для [разделения стилей в зависимости от ширины
устройства](adaptive.ru.md#Определение-ширины-устройства).

### $device-phone-width

По умолчанию: **320px**

Наименьшая ширина телефона.

### $device-tablet-portrait-width

По умолчанию: **600px**
                    
Наименьшая ширина планшета в вертикальном положении.

### $device-tablet-landscape-width

По умолчанию: **900px**
                    
Наименьшая ширина планшета в горизонтальном положении.

### $device-desktop-width

По умолчанию: **1200px**
                     
Наименьшая ширина настольного компьютера.

### $device-widescreen-width

По умолчанию: **1800px**
                     
Наименьшая ширина широкоформатного монитора.


## Типографика

### $heading-base-size

По умолчанию: **1.5 * [$base-font-size](http://compass-style.org/reference/compass/typography/vertical_rhythm/#const-base-font-size)**

Основной размер шрифтов заголовков. Используется в
[heading-font-size](typography.ru.md#heading-font-size). 

### $heading-base-height

По умолчанию: **1**

Основная высота строки заголовков. Используется в
[heading-font-size](typography.ru.md#heading-font-size). **Важно!** Значение должно задаваться без
указания единиц измерения.

### Коэффициенты изменения размера заголовков

#### $heading-ratio-default

По умолчанию: **[$FONT_RATIO_MINOR_SECOND](constants.ru.md#Коэффициенты-изменения-размера-шрифта)**

Коэффициент изменения размера заголовков по умолчанию.

#### $heading-ratio-phone

По умолчанию: **[$FONT_RATIO_MINOR_SECOND](constants.ru.md#Коэффициенты-изменения-размера-шрифта)**

Коэффициент изменения размера заголовков для телефонов и шире.

#### $heading-ratio-tablet-portrait

По умолчанию: **[$FONT_RATIO_MAJOR_SECOND](constants.ru.md#Коэффициенты-изменения-размера-шрифта)**

Коэффициент изменения размера заголовков для вертикальных планшетов и шире.

#### $heading-ratio-tablet-landscape

По умолчанию: **[$FONT_RATIO_MINOR_THIRD](constants.ru.md#Коэффициенты-изменения-размера-шрифта)**

Коэффициент изменения размера заголовков для горизонтальных планшетов и шире.

#### $heading-ratio-desktop

По умолчанию: **[$FONT_RATIO_MINOR_THIRD](constants.ru.md#Коэффициенты-изменения-размера-шрифта)**

Коэффициент изменения размера заголовков для настольных компьютеров и шире.

#### $heading-ratio-widescreen

По умолчанию: **[$FONT_RATIO_MAJOR_THIRD](constants.ru.md#Коэффициенты-изменения-размера-шрифта)**

Коэффициент изменения размера заголовков для широкоформатных экранов.


## Настройки сетки.

### $grid-base-size

По умолчанию: **[$base-font-size](http://compass-style.org/reference/compass/typography/vertical_rhythm/#const-base-font-size) / 4** 

Основной размер ячейки [сетки](grid.ru.md).

### $grid-ratio

По умолчанию: **2** 

Знаменатель прогрессии для вычисления размеров ячеек [сетки](grid.ru.md).


## Слои по оси Z

### $z-index-fixed

По умолчанию: **101** 

Наименьшее значение z-index блоков с `position: fixed`.

### $z-index-popup

По умолчанию: **[$z-index-fixed](#z-index-fixed) + 100**

Наименьшее значение z-index всплывающих блоков.


## Настройки БЭМ

### $bem-element-separator

По умолчанию: **__**

Отделяет имя элемента от имени блока.

### $bem-modifier-separator

По умолчанию: **_**

Отделяет имя модификатора от имени блока или элемента.

### $bem-modifier-value-separator

По умолчанию: **[$bem-modifier-separator](#bem-modifier-separator)**

Отделяет значение модификатора от его имени.
