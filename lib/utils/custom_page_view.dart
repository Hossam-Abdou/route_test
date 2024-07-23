import 'package:flutter/material.dart';
import 'package:route_test/utils/app_colors/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomPageView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    List<Widget> screens = [
      Image.asset('assets/images/slider.png'),
      Image.asset('assets/images/slider.png'),
    ];
    return Column(
      children: [
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
        SizedBox(
          height: 150,
          child: PageView.builder(
            itemBuilder: (context, index) => screens[index],
            controller: controller,
            itemCount: screens.length,
          ),
        ),
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
      ],
    );
  }
}
