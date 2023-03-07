import 'package:collection/collection.dart';
import 'package:linez4/game/utils/vector_2i.dart';

class PathFinder {
  const PathFinder();

  /// Возвращаю маршрут.
  /// Является ленивым список состоящим из [Vector2i].
  ///
  /// В [grid] непроходимая поверхность -- [Null], проходимая -- [Vector2i].
  ///
  /// [start] и [end] не должны выходить за размеры [grid].
  Iterable<Vector2i> findPath({
    required Vector2i start,
    required Vector2i end,
    required List<List<Vector2i?>> grid,
  }) sync* {
    assert(
      start.y >= 0 && start.y < grid.length ||
          start.x >= 0 && start.x < (grid.firstOrNull?.length ?? 0),
      '$start is not in grid',
    );
    assert(
      end.y >= 0 && end.y < grid.length ||
          end.x >= 0 && end.x < (grid.firstOrNull?.length ?? 0),
      '$end is not in grid',
    );

    // Знаю как добраться.
    final reachable = {start};
    // Уже посещенные.
    final explored = <Vector2i, Vector2i?>{};
    explored[start] = null;

    // Два выхода из цикла:
    // 1 -- найти искомого;
    // 2 -- список reachable пуст;
    while (reachable.isNotEmpty) {
      final current = reachable.first;

      if (current == end) {
        yield* _buildPath(current, explored).reversed;

        return;
      }

      reachable.remove(current);

      // Беру соседей которых не посетил.
      final neighbors =
          _getNeighbors(current, grid).whereNot(explored.containsKey);
      for (final next in neighbors) {
        if (reachable.contains(next)) continue;

        explored[next] = current;
        reachable.add(next);
      }
    }

    yield* const Iterable.empty();
  }

  Iterable<Vector2i> _getNeighbors(
    Vector2i node,
    List<List<Vector2i?>> grid,
  ) sync* {
    if (node.x > 0) {
      final cell = grid[node.y][node.x - 1];
      if (cell != null) yield cell;
    }

    if (node.x < ((grid.firstOrNull?.length ?? 0) - 1)) {
      final cell = grid[node.y][node.x + 1];
      if (cell != null) yield cell;
    }
    if (node.y > 0) {
      final cell = grid[node.y - 1][node.x];
      if (cell != null) yield cell;
    }
    if (node.y < grid.length - 1) {
      final cell = grid[node.y + 1][node.x];
      if (cell != null) yield cell;
    }
  }

  List<Vector2i> _buildPath(Vector2i node, Map<Vector2i, Vector2i?> explored) {
    final result = <Vector2i>[];
    Vector2i? currentNode = node;
    while (currentNode != null) {
      result.add(currentNode);
      currentNode = explored[currentNode];
    }

    return result;
  }
}
