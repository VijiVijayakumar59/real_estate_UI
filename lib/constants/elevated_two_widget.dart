import 'package:flutter/material.dart';
import 'package:realestate/constants/colors.dart';

class ElevatedTwo extends StatelessWidget {
  final String titleOne;

  final String titleTwo;
  const ElevatedTwo({
    super.key,
    required this.titleOne,
    required this.titleTwo,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ))),
          onPressed: () {},
          child: Text(
            titleOne,
            style: const TextStyle(
              color: blackColor,
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              const Color.fromARGB(255, 226, 96, 246),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          onPressed: () {},
          child: Text(
            titleTwo,
            style: const TextStyle(
              color: whiteColor,
            ),
          ),
        ),
      ],
    );
  }
}
