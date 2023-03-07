import 'package:flutter/material.dart';
import 'package:linez4/resources/assets.gen.dart';

class LevelButton extends StatefulWidget {
  const LevelButton({
    Key? key,
    required this.level,
    required this.open,
    this.stars = 0,
  }) : super(key: key);

  final int level;
  final bool open;
  final int stars;

  @override
  State createState() {
    return LevelButtonState();
  }
}

class LevelButtonState extends State<LevelButton>
    with SingleTickerProviderStateMixin {
  late AnimationController animController;
  late Animation<double> paddingAnimation;

  @override
  void initState() {
    super.initState();

    animController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    paddingAnimation = Tween<double>(begin: 0, end: 4).animate(animController);

    if (widget.open && widget.stars == 0) {
      animController
        ..addListener(_markNeedRebuild)
        ..repeat(reverse: true);
    }
  }

  void _markNeedRebuild() {
    setState(() {
      return;
    });
  }

  @override
  void dispose() {
    animController
      ..removeListener(_markNeedRebuild)
      ..dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.open) {
      String? buttonAsset;
      switch (widget.stars) {
        case 0:
          buttonAsset = Assets.images.ui.level.gk1.path;
          break;
        case 1:
          buttonAsset = Assets.images.ui.level.xing1.path;
          break;
        case 2:
          buttonAsset = Assets.images.ui.level.xing2.path;
          break;
        case 3:
          buttonAsset = Assets.images.ui.level.xing3.path;
          break;
      }

      return Listener(
        onPointerUp: onPointerUp,
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: SizedBox(
            width: 139,
            height: 132,
            child: Padding(
              padding: EdgeInsets.all(paddingAnimation.value),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(buttonAsset!),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${widget.level}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    } else {
      return Assets.images.ui.level.biglv01.image();
    }
  }

  void onPointerUp(PointerUpEvent _) {
    Navigator.of(context).pushNamed('/game');
  }
}
