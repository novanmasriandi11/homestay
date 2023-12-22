// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:homestay/models/guidance.dart';
import 'package:homestay/models/house.dart';
import 'package:homestay/models/space.dart';
import 'package:homestay/providers/space_provider.dart';
import 'package:homestay/theme.dart';
import 'package:homestay/widgets/bottom_navbar_item.dart';
import 'package:homestay/widgets/guidance_card.dart';
import 'package:homestay/widgets/house_card.dart';
import 'package:homestay/widgets/space_card.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var spaceProvider = Provider.of<SpaceProvider>(context);
    spaceProvider.getRecommendedSpaces();

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(height: edge),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Explore Now',
                style: blackTextStyle.copyWith(fontSize: 24),
              ),
            ),
            const SizedBox(height: 2),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Temukan HomeStay yang nyaman',
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Popular House',
                style: regularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(width: 24),
                  HouseCard(
                    House(
                        id: 1, name: 'Jakarta', imageUrl: 'assets/house-1.png'),
                  ),
                  const SizedBox(width: 20),
                  HouseCard(
                    House(
                        id: 2, name: 'Bandung', imageUrl: 'assets/house-2.png'),
                  ),
                  const SizedBox(width: 20),
                  HouseCard(
                    House(
                        id: 3,
                        name: 'Denpasar',
                        imageUrl: 'assets/house-3.png',
                        isFavorite: true),
                  ),
                  const SizedBox(width: 20),
                  HouseCard(
                    House(
                        id: 4, name: 'Makasar', imageUrl: 'assets/house-4.png'),
                  ),
                  const SizedBox(width: 20),
                  HouseCard(
                    House(
                        id: 5,
                        name: 'Semarang',
                        imageUrl: 'assets/house-5.png'),
                  ),
                  const SizedBox(width: 20),
                  HouseCard(
                    House(
                        id: 6,
                        name: 'Sulawesi',
                        imageUrl: 'assets/house-6.png'),
                  ),
                  const SizedBox(width: 24),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Recommended Space',
                style: regularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: FutureBuilder(
                future: spaceProvider.getRecommendedSpaces(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<Space> data = snapshot.data as List<Space>;
                    int index = 0;
                    return Column(
                      children: data.map((item) {
                        index++;
                        return Container(
                          margin: EdgeInsets.only(
                            top: index == 1 ? 0 : 30,
                          ),
                          child: SpaceCard(item),
                        );
                      }).toList(),
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Tips and Guidance',
                style: regularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  GuidanceCard(
                    Guidance(
                        id: 1,
                        title: 'Homestay Tips',
                        imageUrl: 'assets/tips-1.png',
                        updatedAt: '17 Dec 2023'),
                  ),
                  const SizedBox(height: 20),
                  GuidanceCard(
                    Guidance(
                        id: 2,
                        title: 'Homestay Guidelines',
                        imageUrl: 'assets/guidelines-1.png',
                        updatedAt: '16 Dec 2023'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50 + edge),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(horizontal: edge),
        decoration: BoxDecoration(
          color: const Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              icons: Icons.home,
              isActive: true,
            ),
            BottomNavbarItem(
              icons: Icons.email,
              isActive: false,
            ),
            BottomNavbarItem(
              icons: Icons.credit_card,
              isActive: false,
            ),
            BottomNavbarItem(
              icons: Icons.favorite,
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
