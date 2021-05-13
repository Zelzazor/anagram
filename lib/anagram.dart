import 'package:collection/collection.dart';

bool isAnagram({String a, String b}) {
  if (a != null && b != null) {
    if (a.length == b.length) {
      var ch_a = [];
      var ch_b = [];

      a.runes.forEach((rune) {
        var character = String.fromCharCode(rune);
        ch_a.add(character);
      });

      ch_a.sort();

      b.runes.forEach((rune) {
        var character = String.fromCharCode(rune);
        ch_b.add(character);
      });

      ch_b.sort();

      Function eq = ListEquality().equals;

      return eq(ch_a, ch_b);
    }
  } else {
    throw ArgumentError.notNull('All arguments must be filled');
  }

  return false;
}
