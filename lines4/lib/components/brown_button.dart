import 'package:flutter/material.dart';
import 'package:linez4/resources/assets.gen.dart';

import 'my_button.dart';

class BrownButton extends MyButton {
  BrownButton({
    super.key,
    required String text,
    bool disabled = false,
    VoidCallback? onPressed,
  }) : super(
          buttonNormalAsset: Assets.images.ui.blueNormalButtonUp.path,
          buttonDownAsset: Assets.images.ui.blueNormalButtonDown.path,
          buttonWidth: 190,
          buttonHeight: 48,
          text: text,
          disabled: disabled,
          onPressed: onPressed,
        );
}
