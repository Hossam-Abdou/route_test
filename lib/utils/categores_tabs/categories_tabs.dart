import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:route_test/utils/app_colors/app_colors.dart';

class CategoriesTabs extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<String>tabs=[
      'Art','Business','Comedy','Drama'
    ];
    return  SizedBox(
      height: 30,

      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: AppColors.containerColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(tabs[index],style:GoogleFonts.poppins(
            color: AppColors.blueColor,
            fontWeight: FontWeight.w400,
            fontSize: 16 ,),
        ),),
        itemCount: tabs.length,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 12,
          );
        },
      ),
    );
  }
}
