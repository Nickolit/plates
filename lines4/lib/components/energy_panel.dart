import 'package:flutter/material.dart';
import 'package:linez4/components/my_image_button.dart';
import 'package:linez4/resources/assets.gen.dart';

import '../addons/store_addon.dart';

class EnergyPanel extends StatefulWidget {
  const EnergyPanel({super.key});

  @override
  State createState() {
    return EnergyPanelState();
  }
}

class EnergyPanelState extends State<EnergyPanel> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 5),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Assets.images.ui.energyPanel.image(),
              MyImageButton(
                buttonNormalAsset: Assets.images.ui.addBarButton.path,
                buttonDownAsset: Assets.images.ui.addBarButtonDisabled.path,
                buttonWidth: 30,
                buttonHeight: 30,
                onPressed: onStoreClick,
              )
            ],
          ),
        ),
        Assets.images.ui.energyIcon2.image(),
        const Positioned(
          left: 20,
          top: 12,
          width: 100,
          child: Text(
            '50',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }

  void onStoreClick() {
    StoreAddon.openStore(context);
  }
}
