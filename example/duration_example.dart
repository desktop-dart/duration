import 'package:duration/duration.dart';
import 'package:duration/locale.dart';

void main() {
  // => 5 days 9 hours
  print((aDay * 5 + anHour * 9).pretty());

  // More examples

  final dur = Duration(
      days: 5,
      hours: 23,
      minutes: 59,
      seconds: 59,
      milliseconds: 999,
      microseconds: 999);

  // => 5 days 23 hours 59 minutes 59 seconds
  print(dur.pretty());

  // => 3.455 milliseconds
  print(prettyMilliseconds(aMicrosecond * 3455));

  // => 3 seconds
  print((aMillisecond * 3000).pretty());

  // => 2 seconds
  print((aMillisecond * 2250).pretty());

  // => 1 day 3 hours 2 minutes
  print((aMillisecond * 97320000).pretty());

  // => 5 días 9 horas
  print((aDay * 5 + anHour * 9)
      .pretty(abbreviated: false, locale: spanishLocale));

  // => 5d, 23h, 59m, 59s, 999ms, 999us
  print(dur.pretty(abbreviated: true, tersity: DurationTersity.microsecond));

  // => 5 whole days 9 whole hours
  print((aDay * 5 + anHour * 9).pretty(spacer: ' whole '));

  // => 5 days, 9 hours, 10 minute
  print((aDay * 5 + anHour * 9 + aMinute * 10).pretty(delimiter: ', '));

  // => 5 days, 9 hours and 10 minutes
  print((aDay * 5 + anHour * 9 + aMinute * 10)
      .pretty(delimiter: ', ', conjunction: ' and '));
}
