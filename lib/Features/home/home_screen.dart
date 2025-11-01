import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
      ),
      body: Center(
        child: Text('This HOme Screennnn !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'),
      ),
    );
  }
}