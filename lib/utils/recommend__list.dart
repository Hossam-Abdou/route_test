import 'package:flutter/material.dart';

class RecommendList extends StatelessWidget {
  const RecommendList({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> screens = [
      'assets/images/image_1.png',
      'assets/images/image_2.png',
      'assets/images/image_1.png',
      'assets/images/image_2.png',
    ];
    return SizedBox(
      height: 220,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Image.asset(screens[index]),
        itemCount: screens.length,
        separatorBuilder: (context, index) => SizedBox(width: 16,),
      ),
    );
  }
}
