import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kalinchowk/view/utili/appColor.dart';

class ActivitiesHeading extends StatelessWidget {
  const ActivitiesHeading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          SizedBox(
            height: 250,
            width: Get.size.width,
            child: Stack(
              children: [
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: AppColor.kPrimary.withOpacity(0.5),
                        blurRadius: 15,
                        offset: const Offset(2, 5),
                      ),
                    ],
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                  ),
                  height: Get.size.height,
                  width: Get.size.width,
                  child: Image.network(
                    "https://www.altitudehimalaya.com/media/files/Blog/Activities/ski-in-kalinchowk.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 25),
                  child: SizedBox(
                    width: 350,
                    child: Text(
                      "To -DOs at Kalinchowk",
                      style: TextStyle(
                          color: AppColor.kLight,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
