import 'package:pro/home_muscle/home_mus.dart';
import 'package:flutter/material.dart';

class HomeScreen_m1 extends StatefulWidget {
  @override
  _HomeScreen_m1State createState() => _HomeScreen_m1State();
}

class _HomeScreen_m1State extends State<HomeScreen_m1> {
  PageController _pageController = PageController(
    initialPage: 0,
  );
  int currentIndex = 0;

  Widget childWidget = ChildWidget(
    number: AvailableNumber.First,
  );

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey[500],
        currentIndex: currentIndex,
        onTap: (value) {
          currentIndex = value;
          _pageController.animateToPage(
            value,
            duration: Duration(milliseconds: 200),
            curve: Curves.linear,
          );

          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility),
            label: "Week 1",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility_new_rounded),
            label: "Week 2",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility),
            label: "Week 3",
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (page) {
          setState(() {
            currentIndex = page;
          });
        },
        children: <Widget>[
          ChildWidget(
            number: AvailableNumber.First,
            we: "Week 1",
            level: "Beginner",
          ),
          ChildWidget(
            number: AvailableNumber.Second,
            we: "Week 2\n",
            level: "Intermediate\n",
          ),
          ChildWidget(
            number: AvailableNumber.Third,
            we: "Week 3",
            level: "Advance\n",
          ),
        ],
      ),
    );
  }
}
