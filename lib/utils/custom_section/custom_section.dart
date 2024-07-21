import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:route_test/utils/app_colors/app_colors.dart';

class CustomSection extends StatelessWidget {
  String? title;
  Color? firstColor=AppColors.blackColor;
  Color? secondColor=AppColors.secondPrimaryColor;
  String? secondTitle;
  double? fontSize;

  CustomSection(
      {super.key, this.title, this.firstColor, this.secondColor, this.secondTitle,this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title!,
          style: GoogleFonts.inter(
              color: firstColor, fontWeight: FontWeight.w600, fontSize: fontSize??18),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'See more',
            style: GoogleFonts.inter(
                color: secondColor, fontWeight: FontWeight.w500, fontSize: 14),
          ),
        ),
      ],
    );
  }
}
