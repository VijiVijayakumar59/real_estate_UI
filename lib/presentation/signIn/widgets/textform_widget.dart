import 'package:flutter/material.dart';
import 'package:realestate/constants/colors.dart';

class TextFormWidget extends StatelessWidget {
  final String hintText;
  final IconData? prefixIcon;
  const TextFormWidget({
    super.key,
    required this.hintText,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: whiteColor,
        contentPadding: const EdgeInsets.all(8),
        prefixIcon: Icon(
          prefixIcon,
        ),
        hintText: hintText,
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: purpleColor,
          ),
          borderRadius: BorderRadius.circular(
            28,
          ),
        ),
      ),
    );
  }
}
