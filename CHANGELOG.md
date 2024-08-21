# Changelog

## 4.0.2

+ `parseDuration` exception message fixes

## 4.0.1

+ README and some documentation fixes

## 4.0.0

+ Extension method `Duration.pretty()`
+ Handle negative durations

**Breaking change**:
+ Removed `printDuration` and `printMilliseconds` functions

## 3.0.15

**Breaking change**:
+ Czeck locale should be `cs` not `cz`

## 3.0.14

+ Vietnamese locale
+ Greek locale
+ `DurationTersity` is now enhanced Enum

## 3.0.13

+ Abbreviation fix for Chinese, Japanese and Korean

## 3.0.12

+ Ukranian locale

## 3.0.11

+ printDuration bug fix for upperTersity

## 3.0.10

+ Upper tersity support
+ **Breaking change**: DurationTersity.id is made private
+ **Breaking change**: DurationTersity order is reversed

## 3.0.9

+ Added Finish locale

## 3.0.8

+ **Breaking change**: In Dutch locale, minute is now abbreviated as 'min' not 'm'
+ parseDuration now parses weeks
+ Added some documentation to parseDuration and parseTime

## 3.0.7

+ Chinese and Czech languages
+ **Breaking changes** to chinese locale
+ **Breaking change**: Minute is now abbreviated as 'min' not 'm'

## 3.0.6

+ Fixed `parseDuration`
+ Documented `parseDuration` in README

## 3.0.5

+ README note on `prettyDuration`

## 3.0.4

+ English plural fix for 0 years

## 3.0.2

+ English plural fix for negative amounts

## 3.0.1

+ Added Indonesian, Korean, Romanian and Arabic locales

## 3.0.0

+ Migration to null safety

## 2.0.15

+ Hebrew locale

## 2.0.14

+ Chinese locale
+ Dutch locale

## 2.0.12

+ Fix for Itallian locale
+ Fix for German locale

## 2.0.11

+ dartfmt

## 2.0.10

+ Added `ItalianDurationLocale`

## 2.0.9

+ Added `DurationLocale.fromLanguageCode`
+ Added constants for all locales

## 2.0.6

+ `tryParseDuration`, `tryParseTime` and `tryParseDurationAny`

## 2.0.5

+ Added `parseDuration`

## 2.0.4

+ Terisity now takes account missing values inbetween.

## 2.0.1

+ Russian and Portugese support

## 2.0.0

+ Removed dependence on `quiver_time`
+ Upgraded to Dart 2 stable

## 1.0.0

+ `printDuration`
+ `prettyDuration`
+ `printSeconds`
+ `prettySeconds`
+ `printMilliseconds`
+ `prettyMilliseconds`
