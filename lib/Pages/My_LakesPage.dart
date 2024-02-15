
import 'package:flutter/material.dart';
class MyLikesPage extends StatefulWidget {
  const MyLikesPage({super.key});
static final String id = "MyLikesPage";
  @override
  State<MyLikesPage> createState() => _MyLikesPageState();
}

class _MyLikesPageState extends State<MyLikesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("My Like"),
      ),
    );
  }
}
