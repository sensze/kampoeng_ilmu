import 'package:flutter/material.dart';

class Frontpage extends StatefulWidget {
  @override
  State<Frontpage> createState() => _FrontpageState();
}

class _FrontpageState extends State<Frontpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:

        const Text(
          'Front Page',
        ),

      ),
    );
  }
}
