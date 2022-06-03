import 'package:flutter/material.dart';

class ListviewScreen2 extends StatelessWidget {

  final options = const ['Red', 'Blue', 'Green', 'Orange', 'Black', 'White'];
   
  const ListviewScreen2({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View Screen 2"),
        elevation: 0,
        backgroundColor: Colors.cyan[300],
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) =>ListTile(
            title: Text(options[index]),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.cyan),
            onTap: () {
              final color = options[index];
              print(color);
            },
          ), 
        separatorBuilder: ( _ , __) => const Divider(), 
        )
    );
  }
}