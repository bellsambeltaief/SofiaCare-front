<<<<<<<< HEAD:lib/views/sign/register.dart
import 'package:sofiacare/views/home/home_screen.dart';
import 'package:sofiacare/views/sign/login.dart';
import 'package:sofiacare/views/services/user_service.dart';
========
import 'package:sofiacare/start.dart';
import 'package:sofiacare/sign/login.dart';
import 'package:sofiacare/services/user_service.dart';
>>>>>>>> 4365e2e7383b743d884ca3d6d25ca7a4064b18f4:lib/sign/register.dart
import 'package:sofiacare/constant.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/api_response.dart';
import '../model/user.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  TextEditingController emailCntrl = TextEditingController(),

      nomController = TextEditingController(),

      passwordController = TextEditingController(),
 
      confirmPassword = TextEditingController();

  bool loading = false;
  void _registerUser() async {
    ApiResponse response = await register(
        nomController.text, emailCntrl.text, passwordController.text);
    if (response.error == null) {
      _saveAndRedirectToHome(response.data as User);
    } else {
      setState(() {
        loading = false;
      });
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('${response.error}')));
    }
  }

  void _saveAndRedirectToHome(User user) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('token', user.token ?? '');
    await pref.setInt('userId', user.id ?? 0);
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => Start()), (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 101, 36, 207),
        title: Text('Bienvenue à sofiacare'),
        centerTitle: true,
      ),
      body: Form(
          key: formkey,
          child: ListView(
            padding: EdgeInsets.all(32),
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller:  nomController,
                validator: (val) => val!.isEmpty ? 'Invalid username' : null,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: 'UserName',
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 1, color: Colors.black))),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailCntrl,
                validator: (val) =>
                    val!.isEmpty ? 'Invalid email adress' : null,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: 'Email',
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 1, color: Colors.black))),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                obscureText: true,
                controller: passwordController,
                validator: (val) => val!.isEmpty ? 'Minimum 6 caractére' : null,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline),
                    labelText: 'Password',
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 1, color: Colors.black))),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                obscureText: true,
                controller: confirmPassword,
                validator: (val) => val != passwordController.text
                    ? 'Confirm password does not match'
                    : null,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline),
                    labelText: 'Confirm Password',
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 1, color: Colors.black))),
              ),
              SizedBox(
                height: 15,
              ),
              loading
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : TextButton(
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          setState(() {
                            loading = !loading;
                            _registerUser();
                          });
                        }
                      },
                      child: Text(
                        'Valider',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Color.fromARGB(255, 101, 36, 207)),
                        padding: MaterialStateProperty.resolveWith(
                          (states) => EdgeInsets.symmetric(vertical: 10),
                        ),
                      ),
                    ),
              SizedBox(
                height: 10,
              ),
              kLoginRegisterHint("Déja a un compte?", 'Connexion', () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => Login()),
                    (route) => false);
              }),
              SizedBox(
                height: 100,
              ),
              Positioned(
                  child: Column(
                children: [
                  Text(
                    '--------Ou connecter avec--------',
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  OutlinedButton.icon(
                    icon: Image(
                      image: AssetImage('assets/images/googlee.png'),
                      width: 20.0,
                    ),
                    onPressed: () {},
                    label: Text(
                      'Connecter avec Google',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  OutlinedButton.icon(
                    icon: Image(
                      image: AssetImage('assets/images/facebookk.png'),
                      width: 20.0,
                    ),
                    onPressed: () {},
                    label: Text(
                      'Connecter avec facebook',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ))
            ],
          )),
    );
  }
}
