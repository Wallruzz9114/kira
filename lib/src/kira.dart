import 'package:flutter/material.dart';
import 'package:kira/src/screens/root_screen.dart';

class Kira extends StatelessWidget {
  @override
  MaterialApp build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Kira',
        home: Scaffold(body: RootScreen()),
      );
}
