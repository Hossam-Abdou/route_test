import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExerciseGridView extends StatelessWidget {
  List<String> icons = [
    'assets/images/relax.png',
    'assets/images/meditate.png',
    'assets/images/beathing.png',
    'assets/images/yoga.png',
  ];
  List<String> tabsTitle = ['Relaxation', 'Meditation', 'Beathing', 'Yoga'];
  List<Color> tabsColor = [
    const Color(0xffF9F5FF),
    const Color(0xffFDF2FA),
    const Color(0xffFFFAF5),
    const Color(0xffF0F9FF),
  ];

  ExerciseGridView({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
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
              color:  tabsColor[index],),
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
    );
  }
}
