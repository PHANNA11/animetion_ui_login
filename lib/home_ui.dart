import 'package:flutter/material.dart';
import 'package:mobile_app/home_page.dart';
import 'package:mobile_app/pages/profile_page_screen.dart';

import 'pages/home_page_screen.dart';

class HomeUIScreen extends StatefulWidget {
  const HomeUIScreen({super.key});

  @override
  State<HomeUIScreen> createState() => _HomeUIScreenState();
}

class _HomeUIScreenState extends State<HomeUIScreen>
    with SingleTickerProviderStateMixin {
  int index = 0;
  void setSelectIndex(int index) {
    setState(() {
      this.index = index;
    });
  }

  List pagesViewBody = [
    HomeScreen(),
    ProfilePageScreen(),
  ];
  late TabController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          bottom: TabBar(
              controller: controller,
              onTap: setSelectIndex,
              tabs: <Widget>[
                Tab(
                  text: 'Home',
                  icon: Icon(Icons.home),
                ),
                Tab(
                  text: 'Favorite',
                  icon: Icon(Icons.favorite),
                ),
              ]),
        ),
        body: PageView(
          children: List.generate(
            pagesViewBody.length,
            (indexs) => pagesViewBody[index],
          ),
        ),
        //  body: pagesViewBody[index],
        // bottomNavigationBar: BottomNavigationBar(
        //   currentIndex: index,
        //   items: [
        //     BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
        //     BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person))
        //   ],
        //   onTap: setSelectIndex,
        // ),
      ),
    );
  }
}
