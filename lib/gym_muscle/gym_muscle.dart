import 'package:pro/gym_muscle/gym_mus.dart';
import 'package:flutter/material.dart';

class gym_Home extends StatefulWidget {
  @override
  _gym_homeState createState() => _gym_homeState();
}

class _gym_homeState extends State<gym_Home> {
  PageController _pageController = PageController(
    initialPage: 0,
  );
  int currentIndex = 0;

  Widget childWidget = gym_data(
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
          gym_data(
            number: AvailableNumber.First,
            level: "Beginner\n",
            week: "Week 1\n",
          ),
          gym_data(
            number: AvailableNumber.Second,
            level: "Intermediate\n",
            week: "Week 2\n",
          ),
          gym_data(
            number: AvailableNumber.Third,
            level: "Advance\n",
            week: "Week 3",
          ),
        ],
      ),
    );
  }
}
