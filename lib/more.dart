import 'package:flutter/material.dart';

class ACMore extends StatefulWidget {
  const ACMore({Key? key}) : super(key: key);

  @override
  State<ACMore> createState() => _ACMoreState();
}

class _ACMoreState extends State<ACMore> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('More')),
    );;
  }
}
