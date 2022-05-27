import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

class Frontpage extends StatefulWidget {
  @override
  State<Frontpage> createState() => _FrontpageState();
}

class _FrontpageState extends State<Frontpage> {

  @override
  void initState(){
    super.initState();
  }
  void dispose(){
    super.dispose();
  }

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
