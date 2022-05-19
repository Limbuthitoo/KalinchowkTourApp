import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kalinchowk/view/utili/appColor.dart';
import 'package:kalinchowk/view/widgets/activitiesheading.dart';

class Activities extends StatelessWidget {
  const Activities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List activities = [
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
      {
        "adsImage":
            "https://www.khojnu.com/wp-content/uploads/2019/04/851_kalinchowk-bhagawati.jpg",
        "adsTitle": "Plan a Trip ",
        "adsSubtitle": "with us"
      },
      {
        "adsImage":
            "https://www.khojnu.com/wp-content/uploads/2019/04/851_kalinchowk-bhagawati.jpg",
        "adsTitle": "Plan a Trip ",
        "adsSubtitle": "with us"
      },
      {
        "adsImage":
            "https://www.khojnu.com/wp-content/uploads/2019/04/851_kalinchowk-bhagawati.jpg",
        "adsTitle": "Plan a Trip ",
        "adsSubtitle": "with us"
      }
    ];
    return SingleChildScrollView(
      child: SizedBox(
        height: Get.size.height,
        child: Column(
          children: [
            const ActivitiesHeading(),



          ],
        ),
      ),
    );
  }
}
