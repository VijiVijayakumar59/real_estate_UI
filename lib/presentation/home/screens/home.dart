import 'package:flutter/material.dart';
import 'package:realestate/constants/colors.dart';
import 'package:realestate/presentation/home/widgets/home_widget.dart';
import 'package:realestate/presentation/notifications/screens/notification_screen.dart';
import 'package:realestate/presentation/profile/screens/profile.dart';
import 'package:realestate/presentation/saved/screens/saved_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  static const List<Widget> widgetOptions = <Widget>[
    HomeWidget(),
    SavedWidget(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 28,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border_outlined,
              size: 28,
            ),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_none_outlined,
              size: 28,
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 28,
            ),
            label: 'My Profile',
          ),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: selectedIndex,
        selectedItemColor: blackColor,
        unselectedItemColor: greyColor,
        unselectedLabelStyle: const TextStyle(
          color: greyColor,
        ),
        iconSize: 40,
        elevation: 5,
        onTap: onItemTapped,
      ),
    ));
  }
}
