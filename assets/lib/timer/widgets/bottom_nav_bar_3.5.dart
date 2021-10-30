import 'package:flutter/material.dart';
import 'package:pro/timer/screens/options_screen.dart';
import 'package:pro/timer/screens/stopwatch_screen.dart';
import 'package:pro/timer/screens/timer_screen.dart';

class BottomNavBar extends StatefulWidget {
  final int index;
  final Function callback;

  const BottomNavBar({
    Key key,
    this.index,
    this.callback,
  }) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
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
      currentIndex: widget.index,
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
        widget.callback(ind);

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
                builder: (context) => OptionsScreen(
                    screenIndex: ind, setIndexCallback: widget.callback),
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
