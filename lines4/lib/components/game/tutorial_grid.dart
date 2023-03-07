import 'package:flutter/material.dart';
import 'package:linez4/resources/assets.gen.dart';

class TutorialGrid extends StatefulWidget {
  const TutorialGrid({Key? key}) : super(key: key);

  @override
  State createState() {
    return TutorialGridState();
  }
}

class TutorialGridState extends State<TutorialGrid> {
  Table? tutorialGrid;

  @override
  void initState() {
    super.initState();
    createCells();
  }

  void createCells() {
    final boardChildren = <TableRow>[];
    final cell = Assets.images.cell52x52.image(width: 26, height: 26);
    for (var i = 0; i < 9; i++) {
      final boardRow = <Widget>[];
      for (var j = 0; j < 9; j++) {
        boardRow.add(cell);
      }
      boardChildren.add(TableRow(children: boardRow));
    }
    tutorialGrid = Table(
      defaultColumnWidth: const IntrinsicColumnWidth(),
      children: boardChildren,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [tutorialGrid!],
    );
  }
}
