import 'package:flutter/material.dart';
import 'package:uber_rider_app/TabScreens/EarningPage.dart';
import 'package:uber_rider_app/TabScreens/HomePage.dart';
import 'package:uber_rider_app/TabScreens/ProfilePage.dart';
import 'package:uber_rider_app/TabScreens/RatingPage.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {
  int selectedTab = 0;
  TabController? tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

 onItemClicked(int index){
    setState(() {
      selectedTab=index;
      tabController?.index = index;
    });
 }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Welcome to Rider App"),
        ),
        body: TabBarView(
          controller: tabController,
          physics: const NeverScrollableScrollPhysics(),
          children: const[
            MyHomepage(),
            MyEarningPage(),
            MyRatingPage(),
            MyProfilePage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.credit_card), label: 'Earning'),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: "Rating"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          currentIndex: selectedTab,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white54,
          onTap: onItemClicked,
          selectedLabelStyle: const TextStyle(fontSize: 16),
          showUnselectedLabels: true,
        ),
      ),
    );
  }
}
