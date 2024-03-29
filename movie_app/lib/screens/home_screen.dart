import 'package:flutter/material.dart';
import 'package:movie_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movies In Cinemas"),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: (){}, 
            )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
        children: const [
          CardSwiper(),
          MovieSlider()
        ],
      ),
      )
    );
  }
}