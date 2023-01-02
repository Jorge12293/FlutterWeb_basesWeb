
import 'package:basesweb/router/route_handlers.dart';
import 'package:fluro/fluro.dart';

class Flurorouter{
  
  static final FluroRouter router =  FluroRouter();

  static void configureRoutes(){
    
    router.define(
      '/', 
      handler: counterHandler,
      transitionDuration: const Duration(milliseconds: 5),
      transitionType:TransitionType.fadeIn 
    );
    
    router.define(
      '/stateful', 
      handler: counterHandler,
      transitionDuration: const Duration(milliseconds: 5),
      transitionType:TransitionType.fadeIn
    );
    
    router.define(
      '/stateful/:base', 
      handler: counterHandler,
      transitionDuration: const Duration(milliseconds: 5),
      transitionType:TransitionType.fadeIn
    );

    router.define(
      '/provider', 
      handler: counterProviderHandler,
      transitionDuration: const Duration(milliseconds: 5),
      transitionType:TransitionType.fadeIn
    );

    router.define(
      '/dashboard/users/:userId/:roleId', 
      handler: dashboardHandler,
      transitionDuration: const Duration(milliseconds: 5),
      transitionType:TransitionType.fadeIn
    );

    router.notFoundHandler = notFoundHandler;
    
  }
}



