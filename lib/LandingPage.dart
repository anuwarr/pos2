import 'package:flutter/material.dart';
import 'package:url_navigation_web/pages/AboutPage.dart';
import 'package:url_navigation_web/pages/HelpPage.dart';
import 'package:url_navigation_web/pages/HomePage.dart';
import 'package:url_navigation_web/pages/pos_page.dart';
import 'package:url_navigation_web/pages/SettingsPage.dart';

class LandingPage extends StatefulWidget {
  final String page;
  final String extra;

  const LandingPage({Key key, this.page, this.extra}) : super(key: key);
  @override
  _LandingPageState createState() => _LandingPageState();
}

List<String> pages = [
  'home',
  'profile',
  'settings',
  'help',
];

List<IconData> icons = [
  Icons.home,
  Icons.person_rounded,
  Icons.shopping_cart,
  Icons.settings_rounded,
];

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.03,
              color: Colors.grey[400],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: icons.map((e) {
                  return NavItem(
                    selected: icons.indexOf(e) == pages.indexOf(widget.page),
                    icon: e,
                    onTap: () {
                      if (icons.indexOf(e) == 1) {
                        Navigator.pushNamed(
                            context, '/main/${pages[icons.indexOf(e)]}/Scott');
                      } else {
                        Navigator.pushNamed(
                            context, '/main/${pages[icons.indexOf(e)]}');
                      }
                    },
                  );
                }).toList(),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.97,
              child: Center(
                child: IndexedStack(
                  index: pages.indexOf(widget.page),
                  children: [
                    Home(),
                    About(widget.extra),
                    Profile(),
                    Settings(),
                    Help(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NavItem extends StatefulWidget {
  final IconData icon;
  final bool selected;
  final Function onTap;

  const NavItem({Key key, this.icon, @required this.selected, this.onTap})
      : super(key: key);
  @override
  _NavItemState createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          widget.onTap();
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 375),
          width: double.infinity,
          height: 60.0,
          color: widget.selected ? Colors.transparent : Colors.grey,
          child: Icon(
            widget.icon,
            color: widget.selected ? Colors.white : Colors.black87,
          ),
        ),
      ),
    );
  }
}
