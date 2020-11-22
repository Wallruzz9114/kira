import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  SafeArea build(BuildContext context) => SafeArea(
    child: Scaffold(
      appBar: AppBar(title: const Text('Kira')),
      body: Container(child: const Center(child: Text('hEY'))),
    ),
  );
}