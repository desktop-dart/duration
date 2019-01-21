/// Provides constants used to control terity of [prettyDuration] and
/// [printDuration].
class DurationTersity {
  /// Unique id used to identify and compare [DurationTersity]
  final int id;

  final String value;

  const DurationTersity._(this.id, this.value);

  /// Skip all time units below day
  static const DurationTersity day = const DurationTersity._(1, 'dhMsmu');

  /// Skip all time units below hour
  static const DurationTersity hour = const DurationTersity._(2, 'hMsmu');

  /// Skip all time units below minute
  static const DurationTersity minute = const DurationTersity._(3, 'Msmu');

  /// Skip all time units below second
  static const DurationTersity second = const DurationTersity._(4, 'smu');

  /// Skip all time units below millisecond
  static const DurationTersity millisecond = const DurationTersity._(5, 'mu');

  /// Skip all time units below microsecond
  static const DurationTersity microsecond = const DurationTersity._(6, 'u');

  /// Print all possible time units
  static const DurationTersity all = microsecond;

  bool operator >(DurationTersity other) => id > other.id;

  bool operator <(DurationTersity other) => id < other.id;

  bool operator >=(DurationTersity other) => id >= other.id;

  bool operator <=(DurationTersity other) => id <= other.id;
}
