import 'package:flutter/material.dart';
import 'package:linez4/resources/assets.gen.dart';

class AvatarPanel extends StatefulWidget {
  const AvatarPanel({
    Key? key,
    required this.avatarAssetUrl,
    required this.level,
    required this.cash,
  }) : super(key: key);

  final String avatarAssetUrl;
  final int level;
  final int cash;

  @override
  State createState() {
    return AvatarPanelState();
  }
}

class AvatarPanelState extends State<AvatarPanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.lobby.avatarPanel.provider(),
          fit: BoxFit.fill,
        ),
      ),
      width: 64,
      height: 90,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            left: 8,
            top: 8,
            right: 8,
            bottom: 34,
            child: Image.asset(widget.avatarAssetUrl),
          ),
          Positioned(
            left: 25,
            top: 4,
            width: 16,
            height: 16,
            child: Assets.images.lobby.redBadge.image(),
          ),
          Positioned(
            left: 25,
            top: 4,
            width: 16,
            height: 16,
            child: Text(
              '${widget.level}',
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white, fontSize: 8),
            ),
          ),
        ],
      ),
    );
  }
}
