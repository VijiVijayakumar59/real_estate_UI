import 'package:flutter/material.dart';
import 'package:realestate/constants/colors.dart';

class PropertyScreen extends StatelessWidget {
  const PropertyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 400,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.network(
                        "https://cdn.pixabay.com/photo/2020/08/28/06/13/building-5523630_1280.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 20,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: whiteColor,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
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
              const Text(
                "Real Estate",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: greyColor,
                    size: 20,
                  ),
                  Text(
                    "Palakkad,kerala",
                    style: TextStyle(
                      color: greyColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 330,
                child: Text(
                  "Step inside this beautifully upgraded home and fall in love with its open spaces, including 4 bedrooms, 3.5 bathrooms, two living areas, and a private study.",
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Facilities",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Facilities(
                    icon: Icons.pool,
                    text: "Pool",
                  ),
                  Facilities(
                    icon: Icons.wifi,
                    text: "Wifi",
                  ),
                  Facilities(
                    icon: Icons.workspaces_outlined,
                    text: "Workout",
                  ),
                  Facilities(
                    icon: Icons.sports_basketball_sharp,
                    text: "Sports",
                  ),
                  Facilities(
                    icon: Icons.grade,
                    text: "Garden",
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                width: 400,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0,
                    color: greyColor,
                  ),
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.currency_rupee,
                          color: greyColor,
                          size: 18,
                        ),
                        Text(
                          "400/ per day",
                          style: TextStyle(
                            color: blackColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "Book Now",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class Facilities extends StatelessWidget {
  final IconData icon;
  final String text;

  const Facilities({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
        ),
        Text(text),
      ],
    );
  }
}
