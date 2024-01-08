import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realestate/constants/colors.dart';
import 'package:realestate/presentation/home/widgets/card_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "Agent Profile",
            style: GoogleFonts.aladin(
              textStyle: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  color: Color.fromARGB(255, 110, 13, 127)),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  elevation: 10,
                  shape: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: purpleColor,
                    ),
                    borderRadius: BorderRadius.circular(
                      14,
                    ),
                  ),
                  surfaceTintColor: const Color.fromARGB(255, 218, 141, 232),
                  color: whiteColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.08,
                                  width:
                                      MediaQuery.of(context).size.width * 0.16,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(22),
                                    child: Image.network(
                                      "https://upload.wikimedia.org/wikipedia/commons/1/1f/Woman_1.jpg",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  " One Deal",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            const Positioned(
                              left: 70,
                              top: 28,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: darkGrey,
                                    size: 18,
                                  ),
                                  Text(
                                    "Palakkad,kerala",
                                    style: TextStyle(
                                      color: darkGrey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Center(
                          child: Text(
                            "Information",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 0,
                                  color: greyColor,
                                ),
                              ),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.phone_outlined,
                                  ),
                                  Text("+91 1234567890")
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                width: 0,
                                color: greyColor,
                              )),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.mail_outline_outlined,
                                  ),
                                  Text("onedeal@gmail.com")
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Container(
                            width: 90,
                            decoration: BoxDecoration(
                                border: Border.all(
                              width: 0,
                              color: greyColor,
                            )),
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.real_estate_agent_rounded,
                                ),
                                Text("Property")
                              ],
                            ),
                          ),
                        ),
                        const Text(
                          "About Me",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          "I am proud of my work and my ability. I like to design user experience, design systems, wireframing and prototyping. Agraphic UI/UX designer with an architectural.",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
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
      ),
    );
  }
}
