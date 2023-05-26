import 'package:sofiacare/constant.dart';
<<<<<<<< HEAD:lib/views/sign/loading.dart
import 'package:sofiacare/views/home/home_screen.dart';
import 'package:sofiacare/views/sign/login.dart';
import 'package:sofiacare/model/api_response.dart';
import 'package:flutter/material.dart';

========
import 'package:sofiacare/start.dart';
import 'package:sofiacare/sign/login.dart';
import 'package:sofiacare/model/api_response.dart';
import 'package:flutter/material.dart';
>>>>>>>> 4365e2e7383b743d884ca3d6d25ca7a4064b18f4:lib/sign/loading.dart
import '../services/user_service.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void _loadingUserInfo() async {
    String token = await getToken();
    if (token == '') {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => Login()), (route) => false);
    } else {
      ApiResponse response = await getUserDetail();
      if (response.error == null) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => Start()), (route) => false);
      } else if (response.error == unauthorized) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => Login()), (route) => false);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('${response.error}'),
        ));
      }
    }
  }

  @override
  void initState() {
    _loadingUserInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
