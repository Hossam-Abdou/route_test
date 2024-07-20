import 'package:flutter/material.dart';

class EmojisTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> screens = [
      'assets/images/love.png',
      'assets/images/cool.png',
      'assets/images/sad.png',
      'assets/images/happy.png',
    ];

    return SizedBox(
      height: 60,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => CircleAvatar(
                  backgroundImage: AssetImage(
                screens[index],
              )),
          separatorBuilder: (context, index) => SizedBox(
                width: 25,
              ),
          itemCount: screens.length),
    );
  }
}
