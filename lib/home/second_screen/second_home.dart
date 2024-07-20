import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:route_test/utils/app_colors/app_colors.dart';
import 'package:route_test/utils/emojis_tabs.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SecondHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(

    );
    List<Widget> screens = [
      Image.asset('assets/images/slider.png'),
      Image.asset('assets/images/slider.png'),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: [
        BottomNavigationBarItem(icon: Column(
          children: [
            Icon(Icons.home),

            ImageIcon(AssetImage('assets/images/dot.png')),
          ],
        ), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.category_outlined),label: ''),
        BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/Document.png'),
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ''),
      ]),
      appBar: AppBar(
        backgroundColor: Colors.white,

        title: Text(
          'Moody',
          style: GoogleFonts.poppins(
              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 24),
        ),
        leading: Image.asset('assets/images/logo.png'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Badge(
              child: Icon(Icons.notifications_none_rounded),
              largeSize: 20,
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
                  text: 'Sara Rose',
                  style: GoogleFonts.inter(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
              ])),
              SizedBox(
                height: 12,
              ),
              Text(
                'How are you feeling today ?',
                style: GoogleFonts.inter(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              EmojisTabs(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Feature',
                    style: GoogleFonts.inter(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See more',
                      style: GoogleFonts.inter(
                          color: AppColors.secondPrimaryColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
              CarouselSlider(

                items: screens,
                options: CarouselOptions(
                  height: MediaQuery.sizeOf(context).height * 0.4,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  onPageChanged: (index, reason) {},
                ),
              ),
              Center(
                child: SizedBox(
                  child: SmoothPageIndicator(

                      controller: controller, // PageController
                      count: screens.length,
                      effect: WormEffect(), // your preferred effect
                      onDotClicked: (index) {}),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Exercise',
                    style: GoogleFonts.inter(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See more',
                      style: GoogleFonts.inter(
                          color: AppColors.secondPrimaryColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,

             children: [
               Row(

                 children: [
                   Container(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Image.asset('assets/images/relax.png'),
                   SizedBox(width: 7,),
                         Text('Relax',style: GoogleFonts.inter(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 14),),
                       ],
                     ),
                     padding: EdgeInsets.all(16),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(12),
                       color: Color(0xfff9f5ff)
                     ),
                   ),
                   SizedBox(width: 30,),
                   Container(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Image.asset('assets/images/medication.png'),
                   SizedBox(width: 7,),
                         Text('Relax',style: GoogleFonts.inter(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 14),),
                       ],
                     ),
                     padding: EdgeInsets.all(16),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(12),
                       color: Color(0xfff9f5ff)
                     ),
                   ),
                 ],
               )
             ],
           ),
           SizedBox(height: 10,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                 children: [
                   Container(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Image.asset('assets/images/beathing.png'),
                   SizedBox(width: 7,),
                         Text('Relax',style: GoogleFonts.inter(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 14),),
                       ],
                     ),
                     padding: EdgeInsets.all(16),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(12),
                       color: Color(0xfff9f5ff)
                     ),
                   ),
                   SizedBox(width: 30,),

                   Container(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Image.asset('assets/images/yoga.png'),
                   SizedBox(width: 7,),
                         Text('Relax',style: GoogleFonts.inter(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 14),),
                       ],
                     ),
                     padding: EdgeInsets.all(16),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(12),
                       color: Color(0xfff9f5ff)
                     ),
                   ),
                 ],
               )
             ],
           ),
            ],
          ),
        ),
      ),
    );
  }
}
