import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sofiacare/colors_palette.dart';
import 'package:sofiacare/home/widgets/categories_list.dart';
import 'package:sofiacare/patient/screens/doctors_section.dart';
import 'package:sofiacare/widgets/titre.dart';

class Home extends StatelessWidget {
    static String routeName = "/home";
  const Home({
    super.key,
    required this.catNames,
    required this.catIcons,
  });

  final List catNames;
  final List<Icon> catIcons;

  @override
  Widget build(BuildContext context) {
     List catNames = [
    "Dentiste",
    "Cardiologue",
    "Gynécologue",
    "opticienne",
    "ORL",
    "Psychiatre",
    "Dermathologue",
    "Sexologue",
    "Généraliste",
    "Gastro",
    "Pédiatre",
    "Rhumatologue",
    "Nutritionniste",
    "Diabétologue",
  ];

  List<Icon> catIcons = [
    Icon(MdiIcons.toothOutline, color: ColorsPalette.pColor, size: 30),
    Icon(MdiIcons.heartPlus, color: ColorsPalette.pColor, size: 30),
    Icon(MdiIcons.humanFemale, color: ColorsPalette.pColor, size: 30),
    Icon(MdiIcons.glasses, color: ColorsPalette.pColor, size: 30),
    Icon(MdiIcons.earHearing, color: ColorsPalette.pColor,size: 30),
    Icon(MdiIcons.brain, color: ColorsPalette.pColor, size: 30),
    Icon(MdiIcons.nail, color: ColorsPalette.pColor, size: 30),
    Icon(MdiIcons.human, color: ColorsPalette.pColor, size: 30),
    Icon(MdiIcons.stethoscope, color: ColorsPalette.pColor, size: 30),
    Icon(MdiIcons.stomach, color: ColorsPalette.pColor,size: 30),
    Icon(MdiIcons.baby, color: ColorsPalette.pColor, size: 30),
    Icon(MdiIcons.brain, color: ColorsPalette.pColor, size: 30),
    Icon(MdiIcons.nutrition, color: ColorsPalette.pColor, size: 30),
    Icon(MdiIcons.diabetes, color: ColorsPalette.pColor, size: 30),
  ];
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3.5,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  ColorsPalette.pColor.withOpacity(0.8),
                  ColorsPalette.pColor,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
          ),
            
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage("assets/images/doctor1.jpg"),
                            ),
                            Icon(
                              Icons.notifications_outlined,
                              color: ColorsPalette.wColor,
                              size: 30,
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Cher patient ",
                          style: TextStyle(
                            color: ColorsPalette.wColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Votre santé est notre préoccupation !",
                          style: TextStyle(
                            color: ColorsPalette.wColor,
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 15,
                            bottom: 20,
                          ),
                          width: MediaQuery.of(context).size.width,
                          height: 55,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: ColorsPalette.wColor,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 6,
                                spreadRadius: 3,
                              ),
                            ],
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Rechercher ici",
                              hintStyle: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                size: 25,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Titre(text: 'Catégories',),
                  SizedBox(height: 15),
                  CategoriesList(catNames: catNames, catIcons: catIcons),
                  SizedBox(
                    height: 30,
                  ),
               Titre(text: "Les médecins les plus recommandés",),
                  DocTorsSection(),
                ],
              ),
            ),
          ],
        ),
      );
  }
}



