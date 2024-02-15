import 'package:flutter/material.dart';
class MyFeedPage extends StatefulWidget {
  const MyFeedPage({super.key});
static final String id = "MyFeedPage";
  @override
  State<MyFeedPage> createState() => _MyFeedPageState();
}

class _MyFeedPageState extends State<MyFeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("My Feed"),
      ),
    );
  }
}
