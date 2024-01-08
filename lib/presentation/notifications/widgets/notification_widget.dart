import 'package:flutter/material.dart';
import 'package:realestate/constants/colors.dart';
import 'package:realestate/constants/elevated_two_widget.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(
        elevation: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                "https://upload.wikimedia.org/wikipedia/commons/1/1f/Woman_1.jpg",
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Positioned(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Jackie Shroff",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 250,
                    child: Text(
                      "This apartment was my home , with 4 bedrooms,and i truly recoomend ",
                      style: TextStyle(
                        fontSize: 12,
                        color: greyColor,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  ElevatedTwo(
                    titleOne: "Review",
                    titleTwo: "Approve",
                  ),
                ],
              ),
            ),
            // Container(
            //   height: 60,
            //   width: 40,
            //   margin: const EdgeInsets.all(6.0),
            //   decoration: BoxDecoration(
            //     border: Border.all(
            //       color: greyColor,
            //     ),
            //     borderRadius: BorderRadius.circular(8.0),
            //     image: const DecorationImage(
            //       image: NetworkImage(
            //         "https://as1.ftcdn.net/v2/jpg/01/18/46/52/1000_F_118465200_0q7Of6UnbA8kDlYEe3a4PuIyue27fbuV.jpg",
            //       ),
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
