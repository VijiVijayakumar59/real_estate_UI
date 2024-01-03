// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realestate/constants/colors.dart';
import 'package:realestate/presentation/notifications/widgets/notification_widget.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Notifications",
            style: GoogleFonts.aladin(
              textStyle: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  color: Color.fromARGB(255, 110, 13, 127)),
            ),
          ),
          actions: const [
            Text("Marks all read"),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Push Notifications",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Automatically send new notification",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Switch(
                    onChanged: toggleSwitch,
                    value: isSwitched,
                    activeColor: Colors.blue,
                    activeTrackColor: whiteColor,
                    inactiveThumbColor: Colors.blue,
                    inactiveTrackColor: whiteColor,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const NotificationWidget(),
              const SizedBox(
                height: 24,
              ),
              const NotificationWidget(),
              const SizedBox(
                height: 24,
              ),
              const NotificationWidget(),
              const SizedBox(
                height: 24,
              ),
              const NotificationWidget(),
              const SizedBox(
                height: 24,
              ),
              const NotificationWidget(),
              const SizedBox(
                height: 24,
              ),
              const NotificationWidget(),
              const SizedBox(
                height: 24,
              ),
              const NotificationWidget(),
              const SizedBox(
                height: 24,
              ),
              const NotificationWidget(),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
