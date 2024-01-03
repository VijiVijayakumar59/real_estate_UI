import 'package:flutter/material.dart';
import 'package:realestate/constants/colors.dart';

class SavedCardWidget extends StatelessWidget {
  const SavedCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Center(
            child: Container(
              height: 260,
              width: 340,
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
                  fit: BoxFit.fill,
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
                      padding: EdgeInsets.only(left: 8, right: 8, bottom: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                        Icons.favorite,
                        color: Color.fromARGB(255, 221, 73, 62),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
