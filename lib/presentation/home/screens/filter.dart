import 'package:flutter/material.dart';
import 'package:realestate/constants/colors.dart';

// class BottomSheetView extends StatelessWidget {
//   const BottomSheetView({
//     Key? key,
//   }) : super(
//           key: key,
//         );

//   @override
//   Widget build(BuildContext context) {
//     return BottomSheetPage();
//   }
// }

class BottomSheetPage extends StatelessWidget {
  const BottomSheetPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.filter_alt_outlined,
        color: greyColor,
      ),
      onPressed: () {
        // adding some properties
        showModalBottomSheet(
          context: context,
          // color is applied to main screen when modal bottom screen is displayed
          barrierColor: Colors.greenAccent,
          //background color for modal bottom screen
          backgroundColor: Colors.yellow,
          //elevates modal bottom screen
          elevation: 10,
          // gives rounded corner to modal bottom screen
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          builder: (BuildContext context) {
            // UDE : SizedBox instead of Container for whitespaces
            return const SizedBox(
              height: 200,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('GeeksforGeeks'),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
