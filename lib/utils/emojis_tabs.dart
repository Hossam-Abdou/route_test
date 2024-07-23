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

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for(int i = 0; i < screens.length; i++)

            InkWell(
              onTap: () {
                debugPrint('hello');
              },
              child: Column(
                        children: [
                   CircleAvatar(radius: 27,
                    backgroundImage: AssetImage(
                      screens[i],
                    ),),

              Text(tabsTitle[i],),

                        ],
                      ),
            ),
      ],
    );
  }
}
