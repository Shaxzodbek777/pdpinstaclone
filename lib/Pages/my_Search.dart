import 'package:flutter/material.dart';
class MySearch extends StatefulWidget {
  const MySearch({super.key});
static final String id = "MySearch";
  @override
  State<MySearch> createState() => _MySearchState();
}

class _MySearchState extends State<MySearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Search"),
      ),
    );
  }
}
