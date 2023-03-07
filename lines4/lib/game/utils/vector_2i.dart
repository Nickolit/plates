import 'package:flutter/foundation.dart';

@immutable
class Vector2i {
  final int x;
  final int y;

  @override
  int get hashCode => Object.hash(x, y);

  const Vector2i(this.x, this.y);

  factory Vector2i.zero() => const Vector2i(0, 0);
  factory Vector2i.left() => const Vector2i(-1, 0);
  factory Vector2i.right() => const Vector2i(1, 0);
  factory Vector2i.up() => const Vector2i(0, -1);
  factory Vector2i.down() => const Vector2i(0, 1);

  @override
  String toString() => 'Vector2i{x: $x, y: $y}';

  @override
  bool operator ==(Object other) =>
      (other is Vector2i) && (x == other.x) && (y == other.y);

  Vector2i copyWith({int? x, int? y}) => Vector2i(x ?? this.x, y ?? this.y);
}
