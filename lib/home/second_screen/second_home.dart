import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:route_test/home/first_screen/home_screen.dart';
import 'package:route_test/utils/app_colors/app_colors.dart';
import 'package:route_test/utils/custom_page_view.dart';
import 'package:route_test/utils/custom_section/custom_section.dart';
import 'package:route_test/utils/emojis_tabs.dart';
import 'package:route_test/utils/exercise_grid_view.dart';

class SecondHome extends StatelessWidget {
  const SecondHome({super.key});


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: AppColors.secondPrimaryColor,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Column(
                children: [
                  Icon(Icons.home),
                  ImageIcon(AssetImage('assets/images/dot.png')),
                ],
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined), label: ''),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/Document.png'),
              ),
              label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Moody',
          style: GoogleFonts.poppins(
              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 24,),
        ),
        leading: Image.asset('assets/images/logo.png'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
              child: const Badge(smallSize: 7,
                child: Icon(Icons.notifications_none_rounded),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: 'Hello, ',
                  style: GoogleFonts.inter(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 20),
                ),
                TextSpan(
                  text: 'Hossam Abdou',
                  style: GoogleFonts.inter(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
              ],),),
              const SizedBox(
                height: 12,
              ),
              Text(
                'How are you feeling today ?',
                style: GoogleFonts.inter(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              const EmojisTabs(),
              CustomSection(
                title: 'Feature',
                firstColor: AppColors.blackColor,
                secondColor: AppColors.secondPrimaryColor,
              ),
              CustomPageView(),

              CustomSection(
                title: 'Exercise',
                firstColor: AppColors.blackColor,
                secondColor: AppColors.secondPrimaryColor,
              ),
              ExerciseGridView()

              //second way for Exercises

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     Row(
              //       children: [
              //         Container(
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //             children: [
              //               Image.asset('assets/images/relax.png'),
              //               SizedBox(
              //                 width: 7,
              //               ),
              //               Text(
              //                 'Relax',
              //                 style: GoogleFonts.inter(
              //                     color: Colors.black,
              //                     fontWeight: FontWeight.w500,
              //                     fontSize: 14),
              //               ),
              //             ],
              //           ),
              //           padding: EdgeInsets.all(16),
              //           decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(12),
              //               color: Color(0xfff9f5ff)),
              //         ),
              //         SizedBox(
              //           width: 30,
              //         ),
              //         Container(
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //             children: [
              //               Image.asset('assets/images/meditate.png'),
              //               SizedBox(
              //                 width: 7,
              //               ),
              //               Text(
              //                 'Relax',
              //                 style: GoogleFonts.inter(
              //                     color: Colors.black,
              //                     fontWeight: FontWeight.w500,
              //                     fontSize: 14),
              //               ),
              //             ],
              //           ),
              //           padding: EdgeInsets.all(16),
              //           decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(12),
              //               color: Color(0xfff9f5ff)),
              //         ),
              //       ],
              //     )
              //   ],
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //       children: [
              //         Container(
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //             children: [
              //               Image.asset('assets/images/beathing.png'),
              //               SizedBox(
              //                 width: 7,
              //               ),
              //               Text(
              //                 'Relax',
              //                 style: GoogleFonts.inter(
              //                     color: Colors.black,
              //                     fontWeight: FontWeight.w500,
              //                     fontSize: 14),
              //               ),
              //             ],
              //           ),
              //           padding: EdgeInsets.all(16),
              //           decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(12),
              //               color: Color(0xfff9f5ff)),
              //         ),
              //         SizedBox(
              //           width: 30,
              //         ),
              //         Container(
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //             children: [
              //               Image.asset('assets/images/yoga.png'),
              //               SizedBox(
              //                 width: 7,
              //               ),
              //               Text(
              //                 'Relax',
              //                 style: GoogleFonts.inter(
              //                     color: Colors.black,
              //                     fontWeight: FontWeight.w500,
              //                     fontSize: 14),
              //               ),
              //             ],
              //           ),
              //           padding: EdgeInsets.all(16),
              //           decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(12),
              //               color: Color(0xfff9f5ff)),
              //         ),
              //       ],
              //     )
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
