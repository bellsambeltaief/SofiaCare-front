import 'package:flutter/material.dart';

<<<<<<< HEAD
import '../tools/colors_palette.dart';
=======
import '../colors_palette.dart';
>>>>>>> 4365e2e7383b743d884ca3d6d25ca7a4064b18f4

class TextFieldLogin extends TextField {
  TextFieldLogin(
    String name, {
    Key? key,
    bool isPassword = false,
    bool isEmail = false,
  
    String? errorText,

    required BuildContext context,
  }) : super(
          key: key,
 
          obscureText: isPassword,
       
          keyboardType:
              isEmail ? TextInputType.emailAddress : TextInputType.text,
          style: const TextStyle(
            fontSize: 15.0,
            color: Colors.black,
          ),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            hintText: name,
            errorText: errorText,
            hintStyle: const TextStyle(
              color: Colors.grey,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              fontSize: 15,
            ),
            filled: true,
            fillColor: ColorsPalette.filedColor,
            contentPadding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
          ),
          textInputAction: TextInputAction.next,
        );
}
