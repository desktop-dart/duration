# duration [![pub package](https://img.shields.io/pub/v/duration.svg)](https://pub.dartlang.org/packages/duration)

Utilities to make working with 'Duration's easier.

**NOTE**: Use `prettyDuration`, `prettySeconds`, `prettyMilliseconds` 
instead of `printDuration`, `printSeconds`, `printMilliseconds`
if you only want to format/convert and don't want to print to console!

# Format duration

Use `printDuration` to print a human readable durations. By default, `printDuration`
will print the duration down to the second. It uses english locale by default.

```dart
main() {
  final dur = Duration(
    days: 5,
    hours: 23,
    minutes: 59,
    seconds: 59,
    milliseconds: 999,
    microseconds: 999,
  );

  // => 5d, 23h, 59m, 59s
  print(dur.pretty());

  // => 3 seconds
  print((aMillisecond * 3000).pretty());

  // => 2 seconds 250 milliseconds
  print((aMillisecond * 2250).pretty);

  // => 1 day 3 hours 2 minutes
  print((aMillisecond * 97320000).pretty());
}
```

## With desired locale

Use `locale` parameter to format with desired locale.

```dart
main() {
  // => 5 días 9 horas
  final dur = aDay * 5 + anHour * 9;
  print(
      dur.pretty(
        abbreviated: false,
        locale: DurationLocale.fromLanguageCode('ru'),
      ));
}
```

## Abbreviate units

Use `abbreviated` parameter to use abbreviated units.

```dart
main() {
  final dur = Duration(
    days: 5,
    hours: 23,
    minutes: 59,
    seconds: 59,
    milliseconds: 999,
    microseconds: 999,
  );

  // => 5d, 23h, 59m, 59s, 999ms, 999us
  print(dur.pretty(abbreviated: true, tersity: DurationTersity.all));
}
```

## Spacer

Use `spacer` to add a string between amount and unit.

```dart
main() {
  // => 5 whole days 9 whole hours
  print((aDay * 5 + anHour * 9).pretty(spacer: ' whole '));
}
```

## Delimiter

Use `delimiter` to separate each individual part with a string.

```dart
main() {
  // => 5 days, 9 hours and 10 minute
  print((aDay * 5 + anHour * 9 + aMinute * 10).pretty(delimiter: ', '));
}
```

## Conjugation

Use `conjugation` to add a string before the final unit. Use it in conjunction with
delimiter to add ',' and 'and' to separate individual parts.

```dart
main() {
  // => 5 days, 9 hours and 10 minutes
  print(
      (aDay * 5 + anHour * 9 + aMinute * 10).pretty(
        delimiter: ', ',
        conjugation: ' and ',
      ));
}
```

# Parse duration

## Parse duration

```dart
main() {
  final Duration dur = parseDuration('245:09:08.007006');
  print(dur);
}
```

## Parse time

```dart
main() {
  final Duration dur = parseTime('245:09:08.007006');
  print(dur);
}
```