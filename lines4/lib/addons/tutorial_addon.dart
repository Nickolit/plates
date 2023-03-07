import 'package:flutter/material.dart';

import '../components/blue_button.dart';
import '../components/game/tutorial_grid.dart';

class TutorialAddon {
  static void showTutorial(BuildContext context) {
    showDialog<AlertDialog>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Как играть'),
          content: const TutorialGrid(),
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
