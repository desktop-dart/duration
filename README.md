# duration

Utilities to make working with 'Duration's easier.

# Format duration

Use `printDuration` to print a human readable durations. By default, `printDuration` 
will print the duration down to the second. It uses english locale by default.

```dart
main() {
  final dur = Duration(
      days: 445,
      hours: 23,
      minutes: 59,
      seconds: 59,
      milliseconds: 999,
      microseconds: 999);

  // => 1y, 2mon, 2w, 6d, 23h, 59m, 59s
  printDuration(dur, abbreviated: true);
  
  // => 1 yıl 2 ay 2 hafta 6 gün 23 saat 59 dakika 59 saniye
  printDuration(dur, locale: turkishLocale);

  // => 2 seconds 250 milliseconds
  printDuration(aMillisecond * 2250);

  // => 1 day 3 hours 2 minutes
  printDuration(aMillisecond * 97320000);
}
```

## With desired locale

Use `locale` parameter to format with desired locale.

```dart
main() {
  // => 5 días 9 horas
  printDuration(aDay * 5 + anHour * 9,
      abbreviated: false, locale: spanishLocale);
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
      microseconds: 999);
  // => 5d, 23h, 59m, 59s, 999ms, 999us
  printDuration(dur, abbreviated: true, tersity: DurationTersity.all);
}
```

## Spacer

Use `spacer` to add a string between amount and unit.

```dart
main() {
  // => 5 whole days 9 whole hours
  printDuration(aDay * 5 + anHour * 9, spacer: ' whole ');
}
```

## Delimiter

Use `delimiter` to separate each individual part with a string.

```dart
main() {
  // => 5 days, 9 hours and 10 minute
  printDuration(aDay * 5 + anHour * 9 + aMinute * 10, delimiter: ', ');
}
```

## Conjugation

Use `conjugation` to add a string before the final unit. Use it in conjunction with
delimiter to add ',' and 'and' to separate individual parts.

```dart
main() {
  // => 5 days, 9 hours and 10 minutes
  printDuration(aDay * 5 + anHour * 9 + aMinute * 10,
      delimiter: ', ', conjugation: ' and ');
}
```