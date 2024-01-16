import 'package:flutter/cupertino.dart';
import 'package:mstblc/screens/home/home_screen.dart';
import 'package:mstblc/screens/profile/profile_screen.dart';

import '../../../common/values/colors.dart';

Widget buildPage(int index) {
  List<Widget> _pageList = [
    HomeScreen(),
    Center(
      child: Text("Search Screen"),
    ),
    Center(
      child: Text("Video Screen"),
    ),
    Center(
      child: Text("Chat Screen"),
    ),
    ProfileScreen(),
  ];
  return _pageList[index];
}

List<BottomNavigationBarItem> bottomTabs() {
  return [
    BottomNavigationBarItem(
      label: "",
      icon: SizedBox(
        width: 15,
        height: 15,
        child: Image.asset("assets/icons/home.png"),
      ),
      activeIcon: SizedBox(
        width: 15,
        height: 15,
        child: Image.asset(
          "assets/icons/home.png",
          color: AppColors.primaryElement,
        ),
      ),
    ),
    BottomNavigationBarItem(
      label: "",
      icon: SizedBox(
        width: 15,
        height: 15,
        child: Image.asset("assets/icons/search2.png"),
      ),
      activeIcon: SizedBox(
        width: 15,
        height: 15,
        child: Image.asset(
          "assets/icons/search2.png",
          color: AppColors.primaryElement,
        ),
      ),
    ),
    BottomNavigationBarItem(
      label: "",
      icon: SizedBox(
        width: 15,
        height: 15,
        child: Image.asset("assets/icons/play-circle1.png"),
      ),
      activeIcon: SizedBox(
        width: 15,
        height: 15,
        child: Image.asset(
          "assets/icons/play-circle1.png",
          color: AppColors.primaryElement,
        ),
      ),
    ),
    BottomNavigationBarItem(
      label: "",
      icon: SizedBox(
        width: 15,
        height: 15,
        child: Image.asset("assets/icons/message-circle.png"),
      ),
      activeIcon: SizedBox(
        width: 15,
        height: 15,
        child: Image.asset(
          "assets/icons/message-circle.png",
          color: AppColors.primaryElement,
        ),
      ),
    ),
    BottomNavigationBarItem(
      label: "",
      icon: SizedBox(
        width: 15,
        height: 15,
        child: Image.asset("assets/icons/person2.png"),
      ),
      activeIcon: SizedBox(
        width: 15,
        height: 15,
        child: Image.asset(
          "assets/icons/person2.png",
          color: AppColors.primaryElement,
        ),
      ),
    ),
  ];
}
