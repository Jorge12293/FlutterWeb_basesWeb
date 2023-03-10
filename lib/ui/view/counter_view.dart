
import 'package:basesweb/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  final String base;
  CounterView({
    required this.base
  });

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  
  int counter = 10;
  
  @override
  void initState() {
    if(int.tryParse(widget.base) != null){
      counter = int.parse(widget.base);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Count Stateful',style: TextStyle(fontSize: 20)), 
          FittedBox(
            fit:BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
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
      );
  }
}