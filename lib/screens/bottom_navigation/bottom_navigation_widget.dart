import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:spot_out/resourses/app_svg_icons.dart';
import 'package:spot_out/screens/home/home_screen.dart';
import 'package:spot_out/screens/screen_placeholder.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({
    Key? key,
  }) : super(key: key);

  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _screens = const <Widget>[
    HomeScreen(),
    ScreenPlaceholder(),
    ScreenPlaceholder(),
    ScreenPlaceholder(),
    ScreenPlaceholder(),
  ];

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _screens.length,
      child: Scaffold(
        body: _screens[_index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _index = index;
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppSvgIcons.home),
              activeIcon: SvgPicture.asset(
                AppSvgIcons.home,
                color: Theme.of(context)
                    .bottomNavigationBarTheme
                    .selectedItemColor,
              ),
              title: const SizedBox.shrink(),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppSvgIcons.search),
              activeIcon: SvgPicture.asset(
                AppSvgIcons.search,
                color: Theme.of(context)
                    .bottomNavigationBarTheme
                    .selectedItemColor,
              ),
              title: const SizedBox.shrink(),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppSvgIcons.add),
              title: const SizedBox.shrink(),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppSvgIcons.messages),
              activeIcon: SvgPicture.asset(
                AppSvgIcons.messages,
                color: Theme.of(context)
                    .bottomNavigationBarTheme
                    .selectedItemColor,
              ),
              title: const SizedBox.shrink(),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppSvgIcons.save),
              activeIcon: SvgPicture.asset(
                AppSvgIcons.save,
                color: Theme.of(context)
                    .bottomNavigationBarTheme
                    .selectedItemColor,
              ),
              title: const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
