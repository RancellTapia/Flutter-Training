import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {

  final options = const ['Red', 'Blue', 'Green', 'Orange', 'Black', 'White'];
   
  const ListviewScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View Screen"),
      ),
      body: ListView(
        children: [


          ...options.map(
            (colors) => ListTile(
            title: Text(colors),
            trailing: const Icon(Icons.arrow_forward_ios),
          )).toList()


          
        ],
      )
    );
  }
}