import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:linez4/game/core/cell.dart';
import 'package:linez4/game/utils/vector_2i.dart';

class Board {
  final Vector2i size;

  final Random _random;
  late final List<List<Cell?>> _cells;

  Board([
    this.size = const Vector2i(9, 9),
    @visibleForTesting Random? random,
  ]) : _random = random ?? Random() {
    _init();
  }

  Cell? getCellAt(Vector2i position) => _cells[position.y][position.x];

  /// Устанавливаю [cell] на заданную [position].
  ///
  /// Нельзя установить на уже занятую [position].
  void setCellAt(Vector2i position, Cell cell) {
    assert(getCellAt(position) == null, '$position is not empty.');
    _cells[position.y][position.x] = cell..moveTo(position);
  }

  void deleteCellAt(Vector2i position) => _cells[position.y][position.x] = null;

  /// Возвращаю количество пустых ячеек.
  int getEmptyCellsCount() {
    var result = 0;
    for (var y = 0; y < size.y; y++) {
      for (var x = 0; x < size.x; x++) {
        if (getCellAt(Vector2i(x, y)) == null) {
          result++;
        }
      }
    }

    return result;
  }

  /// Возвращаю случайную позицию.
  Vector2i getRandomCellPosition() {
    assert(getEmptyCellsCount() > 0, '$Board is fall.');
    final target = _random.nextInt(getEmptyCellsCount());
    var current = 0;
    for (var y = 0; y < size.y; y++) {
      for (var x = 0; x < size.x; x++) {
        final position = Vector2i(x, y);
        // Пропускаю занятую ячейку.
        if (getCellAt(position) != null) continue;

        if (target == current) return position;

        current++;
      }
    }

    throw Exception('Failed to create unoccupied position!');
  }

  /// Создаю список [Cell] в количестве переданного [amount].
  /// Созданные ячейки не имею позиции.
  ///
  /// Если нет свободного места, возвращаю пустой список.
  Iterable<Cell> generateCells(int amount) sync* {
    // Если нет свободного места, возвращаю пустой список.
    if (getEmptyCellsCount() < amount) {
      yield* const Iterable.empty();

      return;
    }

    for (var i = 0; i < amount; i++) {
      // TODO(dan): вынести создание [Cell] в фабричный метод.
      yield Cell('imagePath');
    }
  }

  void _init() {
    _cells = List.generate(size.y, (_) => List.filled(size.x, null));
  }
}
