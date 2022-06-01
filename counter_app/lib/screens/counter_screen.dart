import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 0;

  void increase () {
    counter++;
    setState(() {});
  }

  void decrease () {
    counter--;
    setState(() {});
  }

  void reset () {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    const fontSize30 = TextStyle(fontSize: 30);
    

   return Scaffold(
    appBar: AppBar(
      title: const Text('CounterScreen'),
      elevation: 20,
    ),
     body: Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
         children: [
           const Text('Counter number', style: fontSize30),
           Text('$counter', style: fontSize30,)
         ],
       ),
     ),
     floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
     floatingActionButton: CustomFloatingActions(
      increaseFN: increase,
      decreaseFN: decrease,
      resetFN: reset
     ) ,
   );
  }
}

class CustomFloatingActions extends StatelessWidget {

  final Function increaseFN;
  final Function decreaseFN;
  final Function resetFN;

  const CustomFloatingActions({
    Key? key, 
    required this.increaseFN, 
    required this.decreaseFN, 
    required this.resetFN,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
         onPressed: (() => { decreaseFN() }),
         child: const Icon(Icons.exposure_minus_1),
        ),

        FloatingActionButton (
         onPressed: ((() => {resetFN()})),
         child: const Icon(Icons.highlight_remove_sharp),
        ),

        FloatingActionButton(
         onPressed: ((() => {increaseFN()})),
         child: const Icon(Icons.add),
        ),
      ],
    );
  }
}