/// Provides constants used to control terity of [prettyDuration] and
/// [printDuration].
class DurationTersity {
  /// Unique id used to identify and compare [DurationTersity]
  final int id;

  const DurationTersity._(this.id);

  /// Skip all time units below week
  static const DurationTersity week = DurationTersity._(1);

  /// Skip all time units below day
  static const DurationTersity day = DurationTersity._(2);

  /// Skip all time units below hour
  static const DurationTersity hour = DurationTersity._(3);

  /// Skip all time units below minute
  static const DurationTersity minute = DurationTersity._(4);

  /// Skip all time units below second
  static const DurationTersity second = DurationTersity._(5);

  /// Skip all time units below millisecond
  static const DurationTersity millisecond = DurationTersity._(6);

  /// Skip all time units below microsecond
  static const DurationTersity microsecond = DurationTersity._(7);

  /// Print all possible time units
  static const DurationTersity all = microsecond;

  bool operator >(DurationTersity other) => id > other.id;

  bool operator <(DurationTersity other) => id < other.id;

  bool operator >=(DurationTersity other) => id >= other.id;

  bool operator <=(DurationTersity other) => id <= other.id;
}
