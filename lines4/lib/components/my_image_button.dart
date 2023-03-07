import 'package:flutter/material.dart';

class MyImageButton extends StatefulWidget {
  final String buttonNormalAsset;
  final String buttonDownAsset;
  final double buttonWidth;
  final double buttonHeight;
  final bool animated;
  final VoidCallback? onPressed;

  const MyImageButton({
    super.key,
    required this.buttonNormalAsset,
    required this.buttonDownAsset,
    required this.buttonWidth,
    required this.buttonHeight,
    this.animated = false,
    required this.onPressed,
  });

  @override
  State createState() {
    return MyImageButtonState();
  }
}

class MyImageButtonState extends State<MyImageButton>
    with SingleTickerProviderStateMixin {
  bool normalState = true;
  late AnimationController animController;
  late Animation<double> paddingAnimation;

  @override
  void initState() {
    super.initState();

    animController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    paddingAnimation = Tween<double>(begin: 0, end: 4).animate(animController);

    if (widget.animated) {
      animController
        ..addListener(_needToRebuild)
        ..repeat(reverse: true);
    }
  }

  void _needToRebuild() {
    setState(() {
      return;
    });
  }

  @override
  void dispose() {
    animController
      ..removeListener(_needToRebuild)
      ..dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: onPointerDown,
      onPointerUp: onPointerUp,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: SizedBox(
          width: widget.buttonWidth,
          height: widget.buttonHeight,
          child: Padding(
            padding: EdgeInsets.all(paddingAnimation.value),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    normalState
                        ? widget.buttonNormalAsset
                        : widget.buttonDownAsset,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onPointerDown(PointerDownEvent _) {
    setState(() {
      normalState = false;
    });
  }

  void onPointerUp(PointerUpEvent _) {
    setState(() {
      normalState = true;
    });
    widget.onPressed?.call();
  }
}
