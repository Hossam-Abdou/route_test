import 'package:flutter/material.dart';
import 'package:route_test/utils/app_colors/app_colors.dart';
import 'package:route_test/utils/custom_section/custom_section.dart';
import 'package:route_test/utils/custom_tab_bar.dart';
import 'package:route_test/utils/first_screen/best_seller/best_seller.dart';
import 'package:route_test/utils/recommend__list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> tabs = ['Art', 'Business', 'Comedy', 'Drama'];

    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/Document.png'),
              ),
              label: 'Library'),
        ],),
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
                CustomSection(
                  title: 'Categories',
                  secondColor:AppColors.primaryColor ,

                ),
                const CustomTabBar(),
                // CategoriesTabs(),
                // SizedBox(height: 20,),
                CustomSection(
                  title: 'Recommended For You',
                  secondColor:AppColors.primaryColor ,
                  fontSize: 16,

                ),

               const RecommendList(),
               const SizedBox(
                  height: 30,
                ),
                CustomSection(
                  title: 'Best Seller',
                  secondColor:AppColors.primaryColor ,
                ),
                const BestSeller(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
