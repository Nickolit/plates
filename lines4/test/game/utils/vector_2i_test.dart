import 'package:flutter_test/flutter_test.dart';
import 'package:linez4/game/utils/vector_2i.dart';

void main() {
  test('$Vector2i equatable', () {
    const a1 = Vector2i(0, 0);
    const a2 = Vector2i(0, 0);
    const a3 = Vector2i(1, 1);

    expect(a1 == a1, isTrue);
    expect(a1 == a2, isTrue);
    expect(a1 == a3, isFalse);
  });
}
