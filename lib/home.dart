import 'package:flutter/material.dart';
import 'package:flutter_submission/model/tab_manager.dart';
import 'package:flutter_submission/screen/explore.dart';
import 'package:flutter_submission/screen/favorite.dart';
import 'package:flutter_submission/screen/profile.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);
  final title = {0: 'Explore', 1: 'Favorite', 2: 'Profile'};
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static List<Widget> pages = <Widget>[
    const Explore(),
    const Favorite(),
    const Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<TabManager>(builder: (context, tabManager, child) {
      return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(widget.title[tabManager.selectedTab]!),
          ),
        ),
        body: pages[tabManager.selectedTab],
        bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.blue,
            currentIndex: tabManager.selectedTab,
            onTap: (index) {
              tabManager.goToTab(index);
            },
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.explore,
                  ),
                  label: "Explore"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: "Favorite"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Account")
            ]),
      );
    });
  }
}
