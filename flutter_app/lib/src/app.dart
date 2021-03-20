import 'package:flutter/material.dart';
import 'package:flutter_app/src/pages/counter.dart';

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Counter(),
      )
      
    );
  }

}