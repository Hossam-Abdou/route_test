import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:route_test/utils/app_colors/app_colors.dart';
import 'package:route_test/utils/best_seller/best_seller.dart';
import 'package:route_test/utils/categores_tabs/categories_tabs.dart';
import 'package:route_test/utils/recommend__list.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/Document.png'),
            ),
            label: 'Library'),
      ]),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset('assets/images/AudiBooks..png'),
        leading: Image.asset("assets/images/Logo Small.png"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Image.asset("assets/images/Setting.png"),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: GoogleFonts.poppins(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See more',
                      style: GoogleFonts.poppins(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                  )
                ],
              ),

              CategoriesTabs(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommended For You',
                    style: GoogleFonts.poppins(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See more',
                      style: GoogleFonts.poppins(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                  )
                ],
              ),
              RecommendList(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best Seller',
                    style: GoogleFonts.poppins(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See more',
                      style: GoogleFonts.poppins(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                  )
                ],
              ),
          BestSeller(),
            ],
          ),
        ),
      ),
    );
  }
}
