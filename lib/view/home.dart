import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kalinchowk/view/pages/activities.dart';
import 'package:kalinchowk/view/pages/homepage.dart';
import 'package:kalinchowk/view/utili/appColor.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: currentIndex == 0
              ? const HomePage()
              : currentIndex == 1
                  ? const Activities()
                  : currentIndex == 2
                      ? const Text("Places")
                      : const Text("About "),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            currentIndex = index;
            setState(() {});
          },
          currentIndex: currentIndex,
          selectedItemColor: AppColor.kPrimary,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.house_fill), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.square_grid_2x2_fill),
                label: "Activities"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.map_pin_ellipse), label: "Places"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.info), label: "About"),
          ],
        ),
      ),
    );
  }
}
