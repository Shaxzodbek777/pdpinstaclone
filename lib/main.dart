import 'package:flutter/material.dart';
import 'package:pdpinstaclone/Pages/HomePage.dart';
import 'package:pdpinstaclone/Pages/SignUpPage.dart';
import 'package:pdpinstaclone/Pages/Sign_inPage.dart';
import 'package:pdpinstaclone/Pages/SplashPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram clone',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplacePage(),
      routes: {
        SignInPage.id: (context) => SignInPage(),
        SignUpPage.id: (context)=> SignUpPage(),
        HomePage.id: (context)=> HomePage()
      },
    );
  }
} 
