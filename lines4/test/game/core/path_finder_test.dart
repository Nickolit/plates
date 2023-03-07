import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:linez4/game/core/path_finder.dart';
import 'package:linez4/game/utils/vector_2i.dart';

void main() {
  group('$PathFinder', () {
    test('returns empty path when path dos not find', () {
      final grid = _makeGrid(_gridStub2);
      final result = const PathFinder().findPath(
        start: const Vector2i(0, 0),
        end: const Vector2i(2, 0),
        grid: grid,
      );

      expect(result, isEmpty);
    });

    test('returns short path', () {
      final grid = _makeGrid(_gridStub1);
      final result = const PathFinder().findPath(
        start: const Vector2i(0, 0),
        end: const Vector2i(2, 0),
        grid: grid,
      );

      expect(
        result,
        equals([
          const Vector2i(0, 0),
          const Vector2i(0, 1),
          const Vector2i(1, 1),
          const Vector2i(2, 1),
          const Vector2i(2, 0),
        ]),
      );
    });

    test('assert exception when board has not free cells', () {
      final grid = _makeGrid(_gridStub1);

      expect(
        () => const PathFinder().findPath(
          start: const Vector2i(-10, 10),
          end: const Vector2i(0, 0),
          grid: grid,
        ),
        throwsAssertionError,
      );

      expect(
        () => const PathFinder().findPath(
          start: const Vector2i(0, 0),
          end: const Vector2i(-10, 10),
          grid: grid,
        ),
        throwsAssertionError,
      );
    });
  });
}

List<List<Vector2i?>> _makeGrid(List<List<int>> grid) {
  return List.generate(
    grid.length,
    (y) => List.generate(
      grid.firstOrNull?.length ?? 0,
      (x) {
        final isFloor = grid[y][x] == 0;

        return isFloor ? (Vector2i(x, y)) : null;
      },
    ),
  );
}

final _gridStub1 = [
  [0, 1, 0],
  [0, 0, 0],
  [0, 1, 0],
  [0, 0, 0],
];

final _gridStub2 = [
  [0, 1, 1],
  [0, 1, 1],
  [0, 1, 1],
  [0, 0, 0],
];
