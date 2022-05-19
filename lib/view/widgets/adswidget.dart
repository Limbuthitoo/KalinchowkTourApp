import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kalinchowk/view/utili/appColor.dart';

class AdsWidget extends StatelessWidget {
  const AdsWidget({
    Key? key,
    required this.ads_1,
  }) : super(key: key);

  final List ads_1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.size.width,
      height: 250,
      child: ListView.builder(
          clipBehavior: Clip.antiAlias,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: ads_1.length,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              // height: 230,
              width: 470,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: AppColor.kPrimary,
                clipBehavior: Clip.antiAlias,
                elevation: 3,
                shadowColor: AppColor.kPrimary,
                child: Stack(
                  children: [
                    SizedBox(
                      width: Get.size.width,
                      height: Get.size.height,
                      child: Image.network(ads_1[index]['adsImage'],
                          fit: BoxFit.cover, alignment: Alignment.centerLeft),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      // height: 250,
                      width: 200,
                      alignment: Alignment.centerLeft,
                      color: AppColor.kDark.withOpacity(0.8),
                      child: ListTile(
                        title: Text(
                          ads_1[index]['adsTitle'],
                          style: TextStyle(
                            color: AppColor.kLight,
                            fontSize: 30,
                            fontFamily: GoogleFonts.alfaSlabOne().fontFamily,
                          ),
                        ),
                        subtitle: Text(
                          ads_1[index]['adsSubtitle'],
                          style: TextStyle(
                            color: AppColor.kSecondary,
                            fontSize: 20,
                            fontFamily: GoogleFonts.roboto().fontFamily,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
