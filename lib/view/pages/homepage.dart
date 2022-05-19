import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kalinchowk/view/utili/appColor.dart';
import 'package:kalinchowk/view/widgets/adscontent.dart';
import 'package:kalinchowk/view/widgets/popular.dart';

import '../widgets/welcome.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                // height: Get.size.height * 1.2,
                width: Get.size.width,
                color: AppColor.kLowLight,
              ),
              Column(
                children: [
                  const HomeWelcome(),
                  const MainContent(),
                  ListTile(
                    title: const Text(
                      "Popular",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    trailing: TextButton(
                        onPressed: () {}, child: const Text("View More")),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Popular(
                      height: 350,
                      width: 280,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
