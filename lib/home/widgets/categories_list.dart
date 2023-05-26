import 'package:flutter/material.dart';
import 'package:sofiacare/colors_palette.dart';


class CategoriesList extends StatelessWidget {
  const CategoriesList({
    super.key,
    required this.catNames,
    required this.catIcons,
  });

  final List catNames;
  final List<Icon> catIcons;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: catNames.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 15,
                ),
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Color(0xFFF2F8FF),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: ColorsPalette.sdColor,
                      blurRadius: 4,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Center(
                  child: catIcons[index],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                catNames[index],
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: ColorsPalette.bColor.withOpacity(0.7),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

