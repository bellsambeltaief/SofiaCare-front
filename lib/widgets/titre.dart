import 'package:flutter/material.dart';

class Titre extends StatelessWidget {
  final String text;
  const Titre({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15),
      child: Text(
       text,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color:Colors.black,
        ),
      ),
    );
  }
}
