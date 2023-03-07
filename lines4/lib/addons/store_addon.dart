import 'package:flutter/material.dart';

import '../components/blue_button.dart';
import '../resources/assets.gen.dart';

class StoreAddon {
  static void openStore(BuildContext context) {
    showDialog<AlertDialog>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Магазин'),
          content: Table(
            defaultColumnWidth: const IntrinsicColumnWidth(),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(
                children: [
                  Assets.images.ui.energyIcon2.image(),
                  const Text('25'),
                  BlueButton(text: 'Голоса: 1')
                ],
              ),
              TableRow(
                children: [
                  Assets.images.ui.energyIcon2.image(),
                  const Text('75'),
                  BlueButton(text: 'Голоса: 2')
                ],
              ),
              TableRow(
                children: [
                  Assets.images.ui.energyIcon2.image(),
                  const Text('75'),
                  BlueButton(text: 'За рекламу')
                ],
              ),
              TableRow(
                children: [
                  Assets.images.ui.energyIcon2.image(),
                  const Text('300'),
                  BlueButton(text: 'Голоса: 5')
                ],
              ),
              TableRow(
                children: [
                  Assets.images.ui.energyIcon2.image(),
                  const Text('1000'),
                  BlueButton(text: 'Голоса: 10')
                ],
              ),
              TableRow(
                children: [
                  Assets.images.ui.energyIcon2.image(),
                  const Text('3000'),
                  BlueButton(text: 'Голоса: 20')
                ],
              ),
            ],
          ),
          actions: [
            BlueButton(
              text: 'Закрыть',
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }
}
