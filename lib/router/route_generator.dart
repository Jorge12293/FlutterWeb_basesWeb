import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'package:basesweb/ui/view/counter_provider_view.dart';
import 'package:basesweb/ui/view/counter_view.dart';
import 'package:basesweb/ui/view/view_404.dart';



class RouteGenerator{

  static Route<dynamic> generateRoute(RouteSettings settings){
    switch (settings.name){
      case '/stateful':
        return _fadeRoute(CounterView(base:'5'),'/stateful');
      case '/provider':
        return _fadeRoute(CounterProviderView(base :'5'),'/provider');
      default:
        return _fadeRoute(View404(),'/404');
    }
  }

  static PageRoute _fadeRoute(Widget child,String routeName){
    return PageRouteBuilder(
      settings: RouteSettings(name: routeName),
      pageBuilder: ( _, __, ___ ) => child,
      transitionDuration: const Duration(milliseconds: 200),
      transitionsBuilder: (_,animation,__,___) =>
        (kIsWeb)
        ? FadeTransition(
            opacity:animation,
            child: child,
          )
        : CupertinoPageTransition(
          primaryRouteAnimation: animation, 
          secondaryRouteAnimation: __, 
          child: child, 
          linearTransition: true
        )
    );
  }

}


