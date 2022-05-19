import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utili/appColor.dart';
import 'mytextformfield.dart';

class HomeWelcome extends StatelessWidget {
  const HomeWelcome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
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
              "https://web.nepalnews.com/storage/story/1200/800px_Kuri_Village1641782720_1200.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 25),
            child: SizedBox(
              width: 350,
              child: Text(
                "Welcome to KALINCHOWK",
                style: TextStyle(
                  color: AppColor.kLight,
                  fontSize: 40,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: SizedBox(
                height: 66,
                child: MyTextFormField(
                  labelText: "Search",
                  btnHeight: const EdgeInsets.symmetric(vertical: 21),
                  suffixIcon: Icon(
                    Icons.search,
                    color: AppColor.kPrimary,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
