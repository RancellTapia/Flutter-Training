import 'package:flutter/material.dart';

class Counter extends StatefulWidget {

  @override
  createState() => _CounterState();
}

class _CounterState extends State <Counter> {

  final _styleText = new TextStyle(fontSize: 30);

  int _counter = 0;
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Titulo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Numero de Clicks:", style: _styleText,),
            Text( '$_counter',style: _styleText)
          ],
        ),
      ),
      floatingActionButton: _createButton()
    );
  }

  Widget _createButton() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox(width: 30.0,),
          FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _reset),
          Expanded(child: SizedBox(width: 5.0,)),
          FloatingActionButton(child: Icon(Icons.remove), onPressed: _subtract),
          SizedBox(width: 5.0,),
          FloatingActionButton(child: Icon(Icons.add), onPressed: _add),

        ],
      );
  }

  void _add () {
    setState(() => _counter++);
  } 

  void _subtract () {
    setState(() => _counter--);
  } 

  void _reset () {
    setState(() => _counter = 0);
  } 

}