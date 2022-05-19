import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utili/appColor.dart';

class Popular extends StatelessWidget {
  final double height;
  final double width;

  final double shadow;

  const Popular({
    this.width = 200,
    this.height = 300,
    this.shadow = 2,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List popular = [
      {
        "image": "https://pbs.twimg.com/media/Dx_NFbPVsAE2Aq-.jpg",
        "placeName": "Kuri Vilage",
        "placeDetail": "Kuri Village is a small village right under the hills ",
      },
      {
        "image":
            "https://www.himalayastrek.com/wp-content/uploads/2017/01/Kalinchowk-trek-Kalinchowk-bhagwati.jpg",
        "placeName": "Kalinchowk Bhagwati",
        "placeDetail":
            "Kalinchowk is named after the goddess Kalinchowk Bhawati.",
      },
      {
        "image":
            "https://www.goglides.com/blog/content/images/2020/01/kalinchowk-cable-car.jpg",
        "placeName": "Cable Car Ride",
        "placeDetail": "Kalinchowk Cablecar is for you on top of the hills.",
      }
    ];
    return SizedBox(
      height: height,
      width: Get.size.width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: popular.length,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: height,
              width: width,
              child: Stack(
                children: [
                  SizedBox(
                    height: height,
                    width: Get.size.width,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      elevation: shadow,
                      shadowColor: AppColor.kPrimary,
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 230,
                            width: width,
                            child: Image.network(
                              popular[index]['image'],
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 110,
                            width: width,
                            child: ListTile(
                              textColor: AppColor.kDark,
                              title: Text(
                                popular[index]['placeName'],
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                popular[index]['placeDetail'],
                                style: TextStyle(
                                    fontSize: 15, color: AppColor.kPrimary),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
