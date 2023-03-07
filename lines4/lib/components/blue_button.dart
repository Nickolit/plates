import 'package:flutter/material.dart';
import 'package:linez4/resources/assets.gen.dart';

import 'my_button.dart';

class BlueButton extends MyButton {
  BlueButton({
    super.key,
    required String text,
    bool disabled = false,
    bool animated = true,
    VoidCallback? onPressed,
  }) : super(
          buttonNormalAsset: Assets.images.ui.blueNormalButtonUp.path,
          buttonDownAsset: Assets.images.ui.blueNormalButtonDown.path,
          buttonWidth: 181,
          buttonHeight: 39,
          text: text,
          disabled: disabled,
          animated: animated,
          onPressed: onPressed,
        );
}
