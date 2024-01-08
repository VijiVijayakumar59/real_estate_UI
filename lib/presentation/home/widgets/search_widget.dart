// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realestate/constants/colors.dart';
import 'package:realestate/constants/elevated_two_widget.dart';
import 'package:realestate/presentation/home/widgets/counter_widget.dart';
import 'package:realestate/presentation/home/widgets/slider.dart';

class SearchWidget extends StatefulWidget {
  final String title;

  const SearchWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  // Initial Selected Value
  String dropdownvalue = 'Apartment';

  // List of items in our dropdown menu
  var items = [
    'Apartment',
    'Farmhouse',
    'Villa',
    'cottage',
    'Bungalow',
  ];

  double age = 0; // Initialize as zero

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {},
      decoration: InputDecoration(
        prefixIcon: const Icon(
          CupertinoIcons.search,
          color: greyColor,
        ),
        hintText: "Search anything",
        suffixIcon: IconButton(
          icon: const Icon(
            Icons.filter_alt_outlined,
            color: greyColor,
          ),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              barrierColor: Colors.transparent,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              builder: (BuildContext context) {
                return Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                    left: 8,
                    right: 8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Filter",
                            style: GoogleFonts.aBeeZee(
                              textStyle: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const FilterText(
                        title: "Price Range",
                      ),
                      SliderWidget(
                        initialValue: age,
                        onChanged: (value) {
                          setState(() {
                            age = value;
                          });
                        },
                      ),
                      const FilterText(
                        title: "Location",
                      ),
                      const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Enter Location',
                            hintText: 'Enter Your Location'),
                      ),
                      const FilterText(
                        title: "Home Type",
                      ),
                      DropdownButton(
                        // Initial Value
                        value: dropdownvalue,

                        // Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down),

                        // Array list of items
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      ),
                      const FilterText(
                        title: "Number of Bedrooms",
                      ),
                      const CounterWidget(),
                      const FilterText(
                        title: "Number of Bathrooms",
                      ),
                      const CounterWidget(),
                      const FilterText(
                        title: "Ratings",
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.star,
                          ),
                          Icon(
                            Icons.star,
                          ),
                          Icon(
                            Icons.star,
                          ),
                          Icon(
                            Icons.star,
                          ),
                          Icon(
                            Icons.star_border,
                          ),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedTwo(
                            titleOne: "Reset",
                            titleTwo: "Apply",
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            );
          },
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}

class FilterText extends StatelessWidget {
  final String title;
  const FilterText({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
