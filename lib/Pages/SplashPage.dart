import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pdpinstaclone/Pages/SignUpPage.dart';
import 'package:pdpinstaclone/Pages/Sign_inPage.dart';
class SplacePage extends StatefulWidget {
  const SplacePage({super.key});
static final  String id = "SplacePage";
  @override
  State<SplacePage> createState() => _SplacePageState();
}

class _SplacePageState extends State<SplacePage> {

  @override
  void initState() {
    super.initState();
    _initTimer();
  }

  _initTimer(){
    Timer(Duration(seconds: 2), (){
      _callSignInPage();
    });
  }

  _callSignInPage(){
    Navigator.pushReplacementNamed(context, SignInPage.id);
  }

  _callSignUp(){
    Navigator.pushReplacementNamed(context, SignUpPage.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(193, 53, 132, 1),
              Color.fromRGBO(131, 58, 180, 1)
            ]
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Center(
                child: Text("Instagram", style: TextStyle(color: Colors.white, fontSize: 45, fontFamily: "Billabong"),),
              ),
            ),
            Text("All rights reserved", style: TextStyle(color: Colors.white, fontSize: 16),),
            SizedBox(height: 20,),
          ],
        ),
      )
    );
  }
}
