import 'package:flutter/material.dart';

import 'package:components_app/screens/screens.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => const HomeScreen(),
        'listview': (BuildContext context) => const ListviewScreen(),
        'listview2': (BuildContext context) => const ListviewScreen2(),
        'alert': (BuildContext context) => const AlertScreen(),
        'card': (BuildContext context) => const CardScreen(),

      },
    );
  }
}