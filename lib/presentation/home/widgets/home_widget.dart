import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realestate/constants/colors.dart';
import 'package:realestate/presentation/home/widgets/card_widget.dart';
import 'package:realestate/presentation/home/widgets/drawer_elevated_button.dart';
import 'package:realestate/presentation/home/widgets/search_widget.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Prestige Estate",
            style: GoogleFonts.aladin(
              textStyle: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  color: Color.fromARGB(255, 110, 13, 127)),
            ),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 198, 129, 225),
                      Color.fromARGB(255, 214, 179, 245),
                      Color.fromARGB(255, 195, 142, 224),
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      "Prestige Estate",
                      style: GoogleFonts.aladin(
                        textStyle: const TextStyle(
                          fontSize: 28,
                        ),
                      ),
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 28,
                      child: Icon(
                        Icons.person_2_outlined,
                        size: 40,
                        color: Colors.grey,
                      ),
                    ),
                    const Text(
                      "Username",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const DrawerElevatedButton(
                text: "Booked Estates",
              ),
              const SizedBox(
                height: 10,
              ),
              const DrawerElevatedButton(
                text: "Our Servies",
              ),
              const SizedBox(
                height: 10,
              ),
              const DrawerElevatedButton(
                text: "Reviews",
              ),
              const SizedBox(
                height: 10,
              ),
              const DrawerElevatedButton(
                text: "Settings",
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SearchWidget(
                title: "Price",
              ),
              CarouselSlider(
                items: [
                  Column(
                    children: [
                      Container(
                        height: 280,
                        width: 230,
                        margin: const EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: purpleColor,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: NetworkImage(
                              "https://as1.ftcdn.net/v2/jpg/04/32/56/22/1000_F_432562253_0AJEmoX8idRHQiBDCCgHjdsHUBZG7ppx.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                              height: 58,
                              decoration: const BoxDecoration(
                                color: whiteColor,
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(
                                    left: 8, right: 8, bottom: 5),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Real Estate",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            ),
                                            Text(
                                              "4.9",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on_outlined,
                                          color: greyColor,
                                          size: 14,
                                        ),
                                        Text(
                                          "Palakkad,kerala",
                                          style: TextStyle(
                                            color: blackColor,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.currency_rupee,
                                              color: greyColor,
                                              size: 14,
                                            ),
                                            Text(
                                              "400/day",
                                              style: TextStyle(
                                                color: blackColor,
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: -3,
                              right: 4,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.favorite_outline,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 280,
                        width: 230,
                        margin: const EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: purpleColor,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: NetworkImage(
                              "https://as1.ftcdn.net/v2/jpg/03/57/29/66/1000_F_357296644_jZcnxFUpcWDcoPwcnaEJBpscagim8knh.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                              height: 58,
                              decoration: const BoxDecoration(
                                color: whiteColor,
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(
                                    left: 8, right: 8, bottom: 5),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Real Estate",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            ),
                                            Text(
                                              "4.9",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on_outlined,
                                          color: greyColor,
                                          size: 14,
                                        ),
                                        Text(
                                          "Palakkad,kerala",
                                          style: TextStyle(
                                            color: blackColor,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.currency_rupee,
                                          color: greyColor,
                                          size: 14,
                                        ),
                                        Text(
                                          "400/day",
                                          style: TextStyle(
                                            color: blackColor,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: -3,
                              right: -3,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.favorite_border,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
                options: CarouselOptions(
                  height: MediaQuery.of(context).size.height * 0.36,
                  enlargeCenterPage: false,
                  autoPlay: true,
                  aspectRatio: 16 / 10,
                  autoPlayCurve: Curves.linearToEaseOut,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 650),
                  viewportFraction: 0.7,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recommendations for you",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "View More",
                      style: TextStyle(
                        color: greyColor,
                      ),
                    ),
                  ],
                ),
              ),
              const CardWidget(),
              const CardWidget(),
              const CardWidget(),
              const CardWidget(),
              const CardWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
