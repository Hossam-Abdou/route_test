import 'package:flutter/material.dart';

class EmojisTabs extends StatelessWidget {
  const EmojisTabs({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> screens = [
      'assets/images/love.png',
      'assets/images/cool.png',
      'assets/images/sad.png',
      'assets/images/happy.png',
    ];
    List<String> tabsTitle = ['Love', 'Cool', 'Sad', 'Happy'];

    return SizedBox(
      height: 62,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Center(
            child: Column(
              children: [
                CircleAvatar(
                        backgroundImage: AssetImage(
                      screens[index],
                    ),),
                Text(tabsTitle[index],),

              ],
            ),
          ),
          separatorBuilder: (context, index) =>const  SizedBox(
                width: 25,
              ),
          itemCount: screens.length),
    );
  }
}
