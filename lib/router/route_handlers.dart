import 'package:basesweb/ui/view/counter_provider_view.dart';
import 'package:basesweb/ui/view/counter_view.dart';
import 'package:basesweb/ui/view/view_404.dart';
import 'package:fluro/fluro.dart';

// HANDLES

final Handler counterHandler = Handler(
    handlerFunc: (context,params){
      return CounterView(base: params['base']?.first ?? '5');
    }
  );


  final Handler counterProviderHandler = Handler(
    handlerFunc: (context,params){
      return CounterProviderView(base: params['q']?.first ?? '10');
    }
  );

  final Handler dashboardHandler = Handler(
    handlerFunc: (context,params){
      print(params);
      return CounterProviderView(base:  '10');
    }
  );


  final Handler notFoundHandler = Handler(
    handlerFunc: (context,params) => View404()
  );
