import 'package:flutter/material.dart';
import 'package:homestay/theme.dart';

class BottomNavbarItem extends StatelessWidget {
  final IconData? icons;
  final bool isActive;

  const BottomNavbarItem({
    super.key,
    this.icons,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Icon(
          icons,
          size: 26,
          color: purpleColor,
        ),
        const Spacer(),
        isActive
            ? Container(
                width: 30,
                height: 4,
                decoration: BoxDecoration(
                  color: purpleColor,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(1000),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
