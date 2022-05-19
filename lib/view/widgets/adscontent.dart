import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kalinchowk/view/widgets/adswidget.dart';
import 'package:kalinchowk/view/widgets/heightSpace.dart';

class MainContent extends StatefulWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  State<MainContent> createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  @override
  Widget build(BuildContext context) {
    List ads_1 = [
      {
        "adsImage":
            "https://thehimalayantimes.com/uploads/imported_images/wp-content/uploads/2019/12/PJ-Charikot-KalinchokBazar.jpg",
        "adsTitle": "Upto 25% OFF ",
        "adsSubtitle": "For 2 Families"
      },
      {
        "adsImage":
            "https://www.khojnu.com/wp-content/uploads/2019/04/851_kalinchowk-bhagawati.jpg",
        "adsTitle": "Plan a Trip ",
        "adsSubtitle": "with us"
      },
    ];
    return SizedBox(
      height: 300,
      child: Container(
        clipBehavior: Clip.antiAlias,
        height: Get.size.height,
        decoration: const BoxDecoration(),
        child: SizedBox(
          height: Get.size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const HightSpace(),
                AdsWidget(ads_1: ads_1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
