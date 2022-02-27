/// Provides constants used to control terity of [prettyDuration] and
/// [printDuration].
class DurationTersity {
  /// Unique id used to identify and compare [DurationTersity]
  final int _id;
  final int mod;
  final String name;

  const DurationTersity._(this._id, this.mod, this.name);

  @override
  String toString() => name;

  /// Skip all time units below week
  static const week = DurationTersity._(7, 1, 'week');

  /// Skip all time units below day
  static const day = DurationTersity._(6, 7, 'day');

  /// Skip all time units below hour
  static const hour = DurationTersity._(5, 24, 'hour');

  /// Skip all time units below minute
  static const minute = DurationTersity._(4, 60, 'minute');

  /// Skip all time units below second
  static const second = DurationTersity._(3, 60, 'second');

  /// Skip all time units below millisecond
  static const millisecond = DurationTersity._(2, 1000, 'millisecond');

  /// Skip all time units below microsecond
  static const microsecond = DurationTersity._(1, 1000, 'microsecond');

  static const list = [
    week,
    day,
    hour,
    minute,
    second,
    millisecond,
    microsecond
  ];

  bool operator >(DurationTersity other) => _id > other._id;

  bool operator <(DurationTersity other) => _id < other._id;

  bool operator >=(DurationTersity other) => _id >= other._id;

  bool operator <=(DurationTersity other) => _id <= other._id;
}

extension DurExt on Duration {
  int get inWeeks => inDays ~/ 7;

  int inUnit(DurationTersity unit) {
    switch (unit) {
      case DurationTersity.week:
        return inWeeks;
      case DurationTersity.day:
        return inDays;
      case DurationTersity.hour:
        return inHours;
      case DurationTersity.minute:
        return inMinutes;
      case DurationTersity.second:
        return inSeconds;
      case DurationTersity.millisecond:
        return inMilliseconds;
      case DurationTersity.microsecond:
        return inMicroseconds;
      default:
        throw UnsupportedError('support duration unit provided: $unit');
    }
  }
}
