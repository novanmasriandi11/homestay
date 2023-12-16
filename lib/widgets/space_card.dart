import 'package:flutter/material.dart';
import 'package:homestay/models/space.dart';
import 'package:homestay/theme.dart';

class SpaceCard extends StatelessWidget {
  final Space space;

  const SpaceCard(this.space, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Container(
            width: 130,
            height: 110,
            child: Stack(
              children: [
                Image.asset(space.imageUrl),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 70,
                    width: 50,
                    decoration: BoxDecoration(
                      color: purpleColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                      ),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 22,
                          ),
                          Text(
                            '${space.rating}/5',
                            style: whiteTextStyle.copyWith(fontSize: 13),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              space.name,
              style: blackTextStyle.copyWith(fontSize: 18),
            ),
            const SizedBox(height: 2),
            Text.rich(
              TextSpan(
                text: 'IDR ${space.price.round()}K',
                style: purpleTextStyle.copyWith(fontSize: 16),
                children: [
                  TextSpan(
                    text: '/month',
                    style: greyTextStyle.copyWith(fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Text(
              '${space.city}, ${space.country}',
              style: greyTextStyle,
            ),
          ],
        )
      ],
    );
  }
}
