import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:route_test/utils/app_colors/app_colors.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});


  @override
  Widget build(BuildContext context) {
    const List<String> tabs = ['Art', 'Business', 'Comedy', 'Drama'];

    return TabBar(
      isScrollable: true,
      labelPadding: const EdgeInsets.only(right: 20),
      tabAlignment: TabAlignment.center,
      labelStyle: GoogleFonts.poppins(fontSize: 14),
      indicatorColor: Colors.transparent,
      dividerColor: Colors.transparent,
      tabs: tabs.map((tab) {
        return Tab(
          child: Container(
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
              color: AppColors.containerColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              tab,
              style: GoogleFonts.poppins(
                color: AppColors.blueColor,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
