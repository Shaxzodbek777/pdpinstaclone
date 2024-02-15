import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdpinstaclone/Pages/My_LakesPage.dart';
import 'package:pdpinstaclone/Pages/My_Profile_Page.dart';
import 'package:pdpinstaclone/Pages/my_Aploat_Page.dart';
import 'package:pdpinstaclone/Pages/my_Search.dart';
import 'package:pdpinstaclone/Pages/my_feedPage.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});
static final String id = "HomePage";
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  PageController? _pageController;
  int _correntTab = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          MyFeedPage(),
          MySearch(),
          MyApploadPage(),
          MyLikesPage(),
          MyProfilePage()
        ],
        onPageChanged: (int index){
         setState(() {
           _correntTab =index;
         });

        },
      ),
      bottomNavigationBar: CupertinoTabBar(
        onTap: (int index){

      setState(() {
        _correntTab =index;
        _pageController!.animateToPage(index, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
      });
        },
        currentIndex: _correntTab,
        activeColor: Color.fromRGBO(193, 53, 132, 1),
          items: [
          BottomNavigationBarItem(

              icon: Icon(Icons.home, size: 32,)),
          BottomNavigationBarItem(icon: Icon(Icons.search, size: 32,)),
          BottomNavigationBarItem(icon: Icon(Icons.add_box, size: 32,)),
          BottomNavigationBarItem(icon: Icon(Icons.favorite, size: 32,)),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_sharp, size: 32,)),
        ]
      ),
    );
  }
}
