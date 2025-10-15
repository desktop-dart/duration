import 'package:duration/duration.dart';
import 'package:test/test.dart';

void main() {
  const a = Duration(minutes: 59, seconds: 59); // 3599 sec
  const b = Duration(hours: 1, minutes: 1); // 3660 sec
  const c = Duration(minutes: 66); // 3960

  group('min/max', () {
    test('min(positives)', () {
      expect(min(a, b), a);
      expect(min(a, c), a);
      expect(min(b, c), b);
      expect(min(a, min(b, c)), a);
    });
    test('max(positives)', () {
      expect(max(a, b), b);
      expect(max(a, c), c);
      expect(max(b, c), c);
      expect(max(a, max(b, c)), c);
    });
    test('min(negatives)', () {
      expect(min(-a, -b), -b);
      expect(min(-a, -c), -c);
      expect(min(-b, -c), -c);
      expect(min(-a, min(-b, -c)), -c);
    });
    test('max(negatives)', () {
      expect(max(-a, -b), -a);
      expect(max(-a, -c), -a);
      expect(max(-b, -c), -b);
      expect(max(-a, max(-b, -c)), -a);
    });
    test('equals', () {
      expect(min(c, Duration(minutes: 66)), c);
      expect(max(c, Duration(minutes: 66)), c);
    });
    test('+/0/-', () {
      expect(min(a, min(Duration.zero, -a)), -a);
      expect(min(-a, min(Duration.zero, a)), -a);
      expect(max(a, max(Duration.zero, -a)), a);
      expect(max(-a, max(Duration.zero, a)), a);
    });
  });
}
