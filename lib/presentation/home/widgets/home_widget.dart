import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realestate/constants/colors.dart';
import 'package:realestate/presentation/home/widgets/card_widget.dart';
import 'package:realestate/presentation/home/widgets/search_widget.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Real Estate",
            style: GoogleFonts.aladin(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 32,
              ),
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
                      Color.fromARGB(255, 255, 232, 24),
                      Color.fromARGB(255, 230, 218, 105),
                      Color.fromARGB(255, 255, 225, 30),
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      "Real Estate",
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const searchWidget(),
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
                            color: greyColor,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: NetworkImage(
                              "https://www.jaageer.com/agency-images/1638169199670048725.jpeg",
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
                                  Icons.save_alt,
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
                            color: greyColor,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: NetworkImage(
                              "https://www.jaageer.com/agency-images/1638169199670048725.jpeg",
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
                  aspectRatio: 16 / 16,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  viewportFraction: 0.6,
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