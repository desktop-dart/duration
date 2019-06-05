import 'package:duration/duration.dart';
import 'package:test/test.dart';

main() {
  group("parse", () {
    test("time", () {
      expect(parseTime("245:09:08.007006").toString(), "245:09:08.007006");
    });

    test("duration", () {
      expect((parseDuration("20d,10h,30m")).toString(), "490:30:00.000000");
    });
  });
}
