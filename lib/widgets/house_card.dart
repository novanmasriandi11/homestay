import 'package:flutter/material.dart';
import 'package:homestay/models/house.dart';
import 'package:homestay/theme.dart';

class HouseCard extends StatelessWidget {
  final House house;
  const HouseCard(this.house, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        color: const Color(0xffF6F7F8),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  house.imageUrl,
                  width: 120,
                  height: 102,
                  fit: BoxFit.cover,
                ),
                house.isFavorite
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            color: purpleColor,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(36),
                            ),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 22,
                            ),
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
            const SizedBox(height: 11),
            Text(
              house.name,
              style: blackTextStyle.copyWith(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
