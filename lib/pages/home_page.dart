import 'package:flutter/material.dart';
import 'package:homestay/models/guidance.dart';
import 'package:homestay/models/house.dart';
import 'package:homestay/models/space.dart';
import 'package:homestay/theme.dart';
import 'package:homestay/widgets/bottom,_navbar_item.dart';
import 'package:homestay/widgets/guidance_card.dart';
import 'package:homestay/widgets/house_card.dart';
import 'package:homestay/widgets/space_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: Column(
                children: [
                  SpaceCard(
                    Space(
                        id: 1,
                        name: 'Living Space',
                        imageUrl: 'assets/space-1.png',
                        price: 1000,
                        city: 'Jakarta',
                        country: 'Tanjung Barat',
                        rating: 4),
                  ),
                  const SizedBox(height: 30),
                  SpaceCard(
                    Space(
                        id: 2,
                        name: 'Indoor Pool',
                        imageUrl: 'assets/space-2.png',
                        price: 4500,
                        city: 'Bandung',
                        country: 'Dago Ujung',
                        rating: 5),
                  ),
                  const SizedBox(height: 30),
                  SpaceCard(
                    Space(
                        id: 3,
                        name: 'Kitchen Space',
                        imageUrl: 'assets/space-3.png',
                        price: 3580,
                        city: 'Denpasar',
                        country: 'Ubud Atas',
                        rating: 5),
                  ),
                ],
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
              padding: EdgeInsets.symmetric(horizontal: edge),
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
