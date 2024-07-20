import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BestSeller extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<String> screens = [
      'assets/images/image_1.png',
      'assets/images/image_2.png',
      'assets/images/image_1.png',
      'assets/images/image_2.png',
    ];
    return SizedBox(
      height: 160,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          width: 240,
          decoration: BoxDecoration(
            color: Color(0XFFF5F5FA),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(screens[index],height: 140,)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text('Light Mage',style: GoogleFonts.poppins(
                      color: const Color(0xff010104),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,) ,),
                    Text('Laurie Forest',style: GoogleFonts.poppins(
                      color: const Color(0xff6A6A8B),
                      fontWeight: FontWeight.w400,
                      fontSize: 12,) ,) ,
                  ],
                ),
              ),
              // ListTile(
              //
              //   leading: Image.asset(screens[index],fit: BoxFit.fill,),
              //   title:Text('Light Mage',style: GoogleFonts.poppins(
              //     color: const Color(0xff010104),
              //     fontWeight: FontWeight.w500,
              //     fontSize: 16,) ,),
              //   subtitle:Text('Laurie Forest',style: GoogleFonts.poppins(
              //     color: const Color(0xff6A6A8B),
              //     fontWeight: FontWeight.w400,
              //     fontSize: 12,) ,) ,
              // ),
            ],
          ),
        ),
        itemCount: screens.length,
        separatorBuilder: (context, index) =>const SizedBox(width: 16,),
      ),
    );  }
}
