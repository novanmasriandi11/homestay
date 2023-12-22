import 'package:flutter/material.dart';
import 'package:homestay/theme.dart';

class FacilityItem extends StatelessWidget {
  final String name;
  final IconData icon;
  final int quantity;

  const FacilityItem({
    super.key,
    required this.name,
    required this.icon,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 32,
          color: purpleColor,
        ),
        const SizedBox(height: 8),
        Text.rich(
          TextSpan(
            text: '$quantity',
            style: purpleTextStyle.copyWith(fontSize: 14),
            children: [
              TextSpan(
                text: name,
                style: greyTextStyle.copyWith(fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
