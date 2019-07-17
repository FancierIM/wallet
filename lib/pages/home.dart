import 'package:flutter/material.dart';

import '../generated/i18n.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<_NavItem> navList = <_NavItem>[
      _NavItem(
        route: '/wallet',
        title: S.of(context).wallet,
        icon: Icons.account_balance_wallet,
      ),
      _NavItem(
        route: '/discover',
        title: S.of(context).discover,
        icon: Icons.explore,
      ),
      _NavItem(
        route: '/profile',
        title: S.of(context).me,
        icon: Icons.perm_identity,
      ),
    ];

    return Scaffold(
      body: Center(),
      bottomNavigationBar: BottomNavigationBar(
        items: List<BottomNavigationBarItem>.generate(navList.length, (index) {
          return BottomNavigationBarItem(
            title: Text(navList[index].title),
            icon: Icon(navList[index].icon),
          );
        }),
      ),
    );
  }
}

class _NavItem {
  final String route;
  final String title;
  final IconData icon;

  _NavItem({this.route, this.title, this.icon});
}
