import 'package:flutter/material.dart';
import 'package:realestate/presentation/saved/widgets/saved_card_widget.dart';

class SavedWidget extends StatelessWidget {
  const SavedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Favourites",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
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
