import 'package:flutter/material.dart';
import 'package:sofiacare/widgets/app_bar.dart';


<<<<<<< HEAD:lib/views/rendez_vous/validate.dart
=======
import '../../../widgets/app_bar.dart';
>>>>>>> 4365e2e7383b743d884ca3d6d25ca7a4064b18f4:lib/patient/screens/rendez_vous/validate.dart


class Validate extends StatelessWidget {
  const Validate({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         body: Column(
          children: const[
            AppBarTop(textTop: "Rendez-vous"),
            SizedBox(height: 50),
            Text("Votre Rendez-vous est confirmé", style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold,),),
             SizedBox(height: 20),
             Text("Merci de choisir notre service",style: TextStyle(color: Colors.grey,fontSize: 15,),),
      
          ],
        ),
      ),
    );
  }
}