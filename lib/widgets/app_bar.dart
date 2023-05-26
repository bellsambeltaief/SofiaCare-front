
import 'package:flutter/material.dart';
<<<<<<< HEAD


import '../tools/colors_palette.dart';
=======
import 'package:sofiacare/colors_palette.dart';


>>>>>>> 4365e2e7383b743d884ca3d6d25ca7a4064b18f4

class AppBarTop extends StatelessWidget {
  const AppBarTop({
    Key? key,
    required this.textTop,
  }) : super(key: key);
  final String textTop;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50.0),
          bottomRight: Radius.circular(50.0),
        ),
        color: ColorsPalette.primaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            const Spacer(),
             Text(
             textTop,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
