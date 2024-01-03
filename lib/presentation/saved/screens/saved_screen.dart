import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realestate/presentation/saved/widgets/saved_card_widget.dart';

class SavedWidget extends StatelessWidget {
  const SavedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Favourites",
            style: GoogleFonts.aladin(
              textStyle: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  color: Color.fromARGB(255, 110, 13, 127)),
            ),
          ),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              SavedCardWidget(),
              SavedCardWidget(),
              SavedCardWidget(),
              SavedCardWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
