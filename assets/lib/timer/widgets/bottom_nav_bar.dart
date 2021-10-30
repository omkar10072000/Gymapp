import 'package:flutter/material.dart';

import 'package:pro/timer/screens/options_screen.dart';
import 'package:pro/timer/screens/stopwatch_screen.dart';
import 'package:pro/timer/screens/timer_screen.dart';
import 'package:pro/timer/state/nav_bar_state.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    NavBarStateState data = NavBarState.of(context);
    index = data.index;
  }

  @override
  Widget build(BuildContext context) {
    _BuildNavBarItem(Icon icon, String title) {
      return BottomNavigationBarItem(
        icon: Padding(padding: const EdgeInsets.all(10), child: icon),
        title: Text(title),
      );
    }

    return BottomNavigationBar(
      elevation: 0,
      currentIndex: index,
      unselectedFontSize: 14,
      selectedFontSize: 14,
      unselectedItemColor: Theme.of(context).accentColor,
      backgroundColor: Theme.of(context).backgroundColor,
      items: <BottomNavigationBarItem>[
        _BuildNavBarItem(
          Icon(Icons.timer),
          'Stopwatch',
        ),
        _BuildNavBarItem(
          Icon(Icons.slow_motion_video),
          'Timer',
        ),
        _BuildNavBarItem(
          Icon(Icons.settings),
          'Settings',
        ),
      ],
      onTap: (ind) {
        NavBarState.of(context).setIndex(ind);

        switch (ind) {
          case 0:
            Navigator.of(context)
                .pushReplacementNamed(StopwatchScreen.routeName);
            break;
          case 1:
            Navigator.of(context).pushReplacementNamed(TimerScreen.routeName);
            break;
          case 2:
            // Navigator.of(context).pushReplacementNamed(OptionsScreen.routeName);
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => OptionsScreen(),
              ),
            );
            break;
          default:
            Navigator.of(context)
                .pushReplacementNamed(StopwatchScreen.routeName);
            break;
        }
      },
    );
  }
}
