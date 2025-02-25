import 'package:flutter/material.dart';

<<<<<<<< HEAD:lib/widgets/button_login.dart
import '../../tools/colors_palette.dart';
========
import '../../../colors_palette.dart';
>>>>>>>> 4365e2e7383b743d884ca3d6d25ca7a4064b18f4:lib/patient/widgets/buttons/button_login.dart

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  final Function() onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: ColorsPalette.primaryColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
