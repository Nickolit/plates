import 'package:flutter/material.dart';

import '../cell.dart';

class BoardGrid extends StatefulWidget {
  const BoardGrid({super.key});

  @override
  State createState() {
    return BoardGridState();
  }
}

class BoardGridState extends State<BoardGrid> {
  List<Cell> cells = [];
  Table? boardGrid;

  @override
  void initState() {
    super.initState();
    fillCells();
  }

  void fillCells() {
    cells.clear();

    final boardChildren = <TableRow>[];
    for (var i = 0; i < 8; i++) {
      final boardRow = <Widget>[];
      for (var j = 0; j < 8; j++) {
        const cell = Cell();
        cells.add(cell);
        boardRow.add(cell);
      }
      boardChildren.add(TableRow(children: boardRow));
    }
    boardGrid = Table(
      defaultColumnWidth: const IntrinsicColumnWidth(),
      children: boardChildren,
    );
  }

  @override
  Widget build(BuildContext context) {
    return boardGrid!;
  }
}
