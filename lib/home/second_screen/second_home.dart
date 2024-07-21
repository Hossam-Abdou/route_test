import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:route_test/home/first_screen/home_screen.dart';
import 'package:route_test/utils/app_colors/app_colors.dart';
import 'package:route_test/utils/custom_section/custom_section.dart';
import 'package:route_test/utils/emojis_tabs.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SecondHome extends StatefulWidget {
  const SecondHome({super.key});

  @override
  State<SecondHome> createState() => _SecondHomeState();
}

class _SecondHomeState extends State<SecondHome> {
  PageController controller = PageController();
  List<Widget> screens = [
    Image.asset('assets/images/slider.png'),
    Image.asset('assets/images/slider.png'),
  ];
  int currentIndex = 0;
  List<String> icons = [
    'assets/images/relax.png',
    'assets/images/meditate.png',
    'assets/images/beathing.png',
    'assets/images/yoga.png',
  ];
  List<String> tabsTitle = ['Relaxation', 'Meditation', 'Beathing', 'Yoga'];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {
      setState(() {
        currentIndex = controller.page!.round();
      });
    });
  }

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
              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 24),
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
                  text: 'Sara Rose',
                  style: GoogleFonts.inter(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
              ])),
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
              SizedBox(
                height: 150,
                child: PageView.builder(
                  itemBuilder: (context, index) => screens[index],
                  controller: controller,
                  itemCount: screens.length,
                ),
              ),
              // CarouselSlider(
              //   items: screens,
              //   options: CarouselOptions(
              //     height: MediaQuery.sizeOf(context).height * 0.4,
              //     autoPlay: true,
              //     enlargeCenterPage: true,
              //     enableInfiniteScroll: true,
              //     onPageChanged: (index, reason) {},
              //   ),
              // ),
// DotsIndicator(dotsCount: screens.length,
//   position: currentIndex,
//   mainAxisAlignment: MainAxisAlignment.center,
//
// ),
              const SizedBox(
                height: 12,
              ),
              Center(
                child: SizedBox(
                  child: SmoothPageIndicator(
                      controller: controller,
                      count: screens.length,
                      effect: WormEffect(
                          dotHeight: 7,
                          dotWidth: 7,
                          dotColor: AppColors.indicatorInActiveColor,
                          activeDotColor: AppColors
                              .indicatorActiveColor), // your preferred effect
                      onDotClicked: (index) {}),
                ),
              ),
              CustomSection(
                title: 'Exercise',
                firstColor: AppColors.blackColor,
                secondColor: AppColors.secondPrimaryColor,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 40 / 18,
                  ),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xfff9f5ff)),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 26,
                            width: 26,
                            child: FittedBox(
                                child: Image.asset(
                              icons[index],
                            )),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Text(
                              tabsTitle[index],
                              style: GoogleFonts.inter(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: icons.length,
                ),
              ),

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
