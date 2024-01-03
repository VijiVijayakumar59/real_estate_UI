import 'package:flutter/material.dart';
import 'package:realestate/constants/colors.dart';
import 'package:realestate/presentation/property/screens/property_screen.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const PropertyScreen(),
            ),
          );
        },
        child: Card(
          shape: OutlineInputBorder(
            borderSide: const BorderSide(
              color: greyColor,
            ),
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
          surfaceTintColor: Colors.white,
          color: whiteColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.08,
                          width: MediaQuery.of(context).size.width * 0.17,
                          child: Image.network(
                            "https://cdn.pixabay.com/photo/2016/11/18/17/46/house-1836070_1280.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Real Estate",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const Positioned(
                      right: 5,
                      child: Row(
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
                    ),
                    const Positioned(
                      left: 70,
                      top: 22,
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: greyColor,
                            size: 14,
                          ),
                          Text(
                            "Palakkad,kerala",
                            style: TextStyle(
                              color: greyColor,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Positioned(
                      left: 70,
                      top: 40,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.currency_rupee,
                            color: greyColor,
                            size: 18,
                          ),
                          Text(
                            "400/day",
                            style: TextStyle(
                              color: blackColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
