import 'package:flutter/material.dart';
import 'package:kira/src/screens/home_screen.dart';

class Kira extends StatelessWidget {
  @override
  MaterialApp build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: HomeScreen(),
  );
}