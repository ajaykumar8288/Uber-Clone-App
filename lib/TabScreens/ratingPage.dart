import 'package:flutter/material.dart';

class MyRatingPage extends StatefulWidget {
  const MyRatingPage({super.key});

  @override
  State<MyRatingPage> createState() => _MyRatingPageState();
}

class _MyRatingPageState extends State<MyRatingPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Rating Page"),),
    );
  }
}
