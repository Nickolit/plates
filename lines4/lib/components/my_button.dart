import 'package:flutter/material.dart';
import 'package:linez4/resources/assets.gen.dart';

class MyButton extends StatefulWidget {
  final String buttonNormalAsset;
  final String buttonDownAsset;
  final double buttonWidth;
  final double buttonHeight;
  final String text;
  final bool disabled;
  final bool animated;
  final VoidCallback? onPressed;

  const MyButton({
    super.key,
    required this.buttonNormalAsset,
    required this.buttonDownAsset,
    required this.buttonWidth,
    required this.buttonHeight,
    required this.text,
    this.disabled = false,
    this.animated = true,
    required this.onPressed,
  });

  @override
  State createState() {
    return MyButtonState();
  }
}

class MyButtonState extends State<MyButton>
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

    if (widget.animated && !widget.disabled) {
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
    return !widget.disabled
        ? Listener(
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
                    child: Text(
                      widget.text,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          )
        : Stack(
            children: [
              Assets.images.ui.buttonDisabled.image(
                width: widget.buttonWidth,
                height: widget.buttonHeight,
              ),
              Container(
                width: widget.buttonWidth,
                height: widget.buttonHeight,
                alignment: Alignment.center,
                child: Text(
                  widget.text,
                  style: const TextStyle(color: Colors.grey),
                ),
              )
            ],
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
