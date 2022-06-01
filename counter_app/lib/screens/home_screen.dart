

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const fontSize30 = TextStyle(fontSize: 30);

   return Scaffold(
    appBar: AppBar(
      title: const Text('HomeScreen'),
      elevation: 20,
    ),
     body: Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
         children: const [
           Text('Counter number', style: fontSize30),
           Text('0', style: fontSize30,)
         ],
       ),
     ),
     floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
     floatingActionButton: FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => {
          print('Hello word')
      },
     ) ,
   );
  }
 
}