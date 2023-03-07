import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:linez4/game/core/board.dart';
import 'package:linez4/game/core/cell.dart';
import 'package:linez4/game/utils/vector_2i.dart';

void main() {
  group('$Board', () {
    final random = Random(10);

    test('returns random position', () {
      final board = Board(const Vector2i(2, 2), random);

      final randomPosition = board.getRandomCellPosition();

      expect(randomPosition.x, equals(1));
      expect(randomPosition.y, equals(1));
    });

    test('returns last empty cell', () {
      final board = Board(const Vector2i(2, 2), random)
        ..setCellAt(const Vector2i(0, 0), Cell('img'))
        ..setCellAt(const Vector2i(1, 0), Cell('img'))
        ..setCellAt(const Vector2i(1, 1), Cell('img'));

      final randomPosition = board.getRandomCellPosition();

      expect(randomPosition.x, equals(0));
      expect(randomPosition.y, equals(1));
    });

    test('assert exception when board has not free cells', () {
      final board = Board(const Vector2i(0, 0), random);

      expect(board.getRandomCellPosition, throwsAssertionError);
    });

    group('generateCells', () {
      test('generate cells', () {
        final board = Board(const Vector2i(4, 4), random);

        expect(board.generateCells(4), hasLength(4));
        expect(board.getEmptyCellsCount(), equals(16));
      });

      test('returns empty list', () {
        final board = Board(const Vector2i(2, 2), random);

        expect(board.generateCells(6), isEmpty);
        expect(board.getEmptyCellsCount(), equals(4));
      });
    });
  });
}
