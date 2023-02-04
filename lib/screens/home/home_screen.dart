import 'package:flutter/material.dart';
import 'package:food_ui_kit/demoData.dart';
import '../../constants.dart';
import 'components/image_carousel.dart';
import 'components/restaurant_info_medium_card.dart';
import 'components/section_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Column(children: [
            Text(
              "Delivery to".toUpperCase(),
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: kActiveColor),
            ),
            const Text("San Francisco", style: TextStyle(color: Colors.black))
          ]),
          actions: [
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Filter",
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              floating: true,
              title: Column(children: [
                Text(
                  "Delivery to".toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: kActiveColor),
                ),
                const Text("San Francisco",
                    style: TextStyle(color: Colors.black))
              ]),
              actions: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Filter",
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              sliver: SliverToBoxAdapter(
                child: ImageCarousel(),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.all(defaultPadding),
              sliver: SliverToBoxAdapter(
                child: SectionTitle(
                  title: "Featured Partners",
                  press: () {},
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    demoMediumCardData.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(left: defaultPadding),
                      child: RestaurantInfoMediumCard(
                          title: demoMediumCardData[index]['name'],
                          location: demoMediumCardData[index]['location'],
                          image: demoMediumCardData[index]['images'],
                          deliveryTime: demoMediumCardData[index]
                              ['delivertTime'],
                          rating: demoMediumCardData[index]['rating'],
                          press: () {}),
                    ),
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(defaultPadding),
              sliver: SliverToBoxAdapter(
                child: Image.asset("assets/images/Banner.png"),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.all(defaultPadding),
              sliver: SliverToBoxAdapter(
                child: SectionTitle(
                  title: "Best Pick",
                  press: () {},
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    demoMediumCardData.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(left: defaultPadding),
                      child: RestaurantInfoMediumCard(
                          title: demoMediumCardData[index]['name'],
                          location: demoMediumCardData[index]['location'],
                          image: demoMediumCardData[index]['images'],
                          deliveryTime: demoMediumCardData[index]
                              ['delivertTime'],
                          rating: demoMediumCardData[index]['rating'],
                          press: () {}),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
