import 'package:basesweb/providers/counter_provider.dart';
import 'package:basesweb/ui/shared/custom_app_menu.dart';
import 'package:basesweb/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class CounterProviderView extends StatelessWidget {
  final String base;
  CounterProviderView({
    Key? key,
    required this.base
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=> CounterProvider(base),
      child: _CounterProviderViewBody()
    );
  }
}


class _CounterProviderViewBody extends StatelessWidget {
  _CounterProviderViewBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final  counterProvider =Provider.of<CounterProvider>(context);

    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Count Provider',style: TextStyle(fontSize: 20)), 
          FittedBox(
            fit:BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text('Count : ${counterProvider.counter}',
                style:const TextStyle(fontSize: 80,fontWeight: FontWeight.bold))
              ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFlatButton(
                text: 'Incrementar',
                onPressed: ()=> counterProvider.increment()
              ), 
              CustomFlatButton(
                text: 'Decrementar',
                onPressed: ()=> counterProvider.decrement()
              ), 
            ],
          ),
          const Spacer()
          
        ],
      );
  }
}
