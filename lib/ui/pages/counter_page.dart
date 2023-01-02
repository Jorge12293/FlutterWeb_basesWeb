
import 'package:basesweb/ui/shared/custom_app_menu.dart';
import 'package:basesweb/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  CounterPage();

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 10;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          CustomAppMenu(),

          const Spacer(),

          const Text('Count Stateful',style: TextStyle(fontSize: 20)), 
          FittedBox(
            fit:BoxFit.contain,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text('Count : $counter',
                style:const TextStyle(fontSize: 80,fontWeight: FontWeight.bold))
              ),
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFlatButton(
                text: 'Incrementar',
                onPressed: ()=> setState(() { counter++; })
              ), 
              CustomFlatButton(
                text: 'Decrementar',
                onPressed: ()=> setState(() { counter--; })
              ), 
            ],
          ),
          const Spacer()
          
        ],
      ),
    );
  }
}