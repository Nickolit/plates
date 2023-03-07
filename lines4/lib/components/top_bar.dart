import 'package:flutter/material.dart';

import '../addons/store_addon.dart';
import '../components/blue_button.dart';
import 'energy_panel.dart';
import 'exp_panel.dart';

class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  State createState() => TopBarState();
}

class TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Table(
      defaultColumnWidth: FixedColumnWidth(screenWidth / 3),
      children: [
        TableRow(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: const [SizedBox(width: 10), ExpPanel()],
              ),
            ),
            const Center(
              child: EnergyPanel(),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: BlueButton(
                text: 'Магазин',
                animated: false,
                onPressed: onStoreClick,
              ),
            )
          ],
        )
      ],
    );
  }

  void onStoreClick() {
    StoreAddon.openStore(context);
  }
}
