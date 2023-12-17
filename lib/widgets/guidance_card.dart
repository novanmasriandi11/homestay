import 'package:flutter/material.dart';
import 'package:homestay/models/guidance.dart';
import 'package:homestay/theme.dart';

class GuidanceCard extends StatelessWidget {
  final Guidance guidance;
  const GuidanceCard(this.guidance, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          guidance.imageUrl,
          width: 80,
        ),
        const SizedBox(width: 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              guidance.title,
              style: blackTextStyle.copyWith(fontSize: 18),
            ),
            const SizedBox(height: 4),
            Text(
              'Updated ${guidance.updatedAt}',
              style: greyTextStyle,
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_right,
            color: greyColor,
          ),
        ),
      ],
    );
  }
}
