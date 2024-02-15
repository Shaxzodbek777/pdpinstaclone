import 'package:flutter/material.dart';
class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});
static final String id = "MyProfilePage";
  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("My Profile"),
      ),
    );
  }
}
