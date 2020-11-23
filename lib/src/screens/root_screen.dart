import 'package:flutter/material.dart';
import 'package:kira/src/screens/email_screen.dart';
import 'package:kira/src/screens/password_screen.dart';
import 'package:kira/src/screens/terms_screen.dart';

class RootScreen extends StatefulWidget {
  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  // ignore: prefer_final_fields
  List<Widget> _screens = <Widget>[];
  int _currentScreenIndex = 0;

  @override
  void initState() {
    super.initState();
    _screens.addAll(<Widget>[
      EmailScreen(
        goTo: (int screenIndex) => setState(
          () => _currentScreenIndex = screenIndex,
        ),
      ),
      TermsScreen(
        goTo: (int screenIndex) => setState(
          () => _currentScreenIndex = screenIndex,
        ),
      ),
      PasswordScreen(
        goTo: (int screenIndex) => setState(
          () => _currentScreenIndex = screenIndex,
        ),
      )
    ]);
  }

  @override
  Container build(BuildContext context) => Container(
        child: _screens.elementAt(_currentScreenIndex),
      );
}
