import 'package:flutter/material.dart';
import 'package:kira/src/screens/email_screen.dart';
import 'package:kira/src/screens/password_screen.dart';
import 'package:kira/src/screens/root_screen.dart';
import 'package:kira/src/screens/terms_screen.dart';

class Kira extends StatelessWidget {
  @override
  MaterialApp build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Kira',
        home: Scaffold(body: RootScreen()),
      );
}
