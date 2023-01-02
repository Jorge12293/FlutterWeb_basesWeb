import 'package:basesweb/locator.dart';
//import 'package:basesweb/router/route_generator.dart';
import 'package:basesweb/router/router.dart';
import 'package:basesweb/services/navigator_service.dart';
import 'package:basesweb/ui/layout/main_layout_page.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  Flurorouter.configureRoutes();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Routes App',
      initialRoute: '/',
      //onGenerateRoute:(settings)=> RouteGenerator.generateRoute(settings),
      onGenerateRoute: Flurorouter.router.generator,
      navigatorKey: locator<NavigatorServices>().navigatorKey,
      builder: (_, child){
        return MainLayoutPage(
          child: child ?? const CircularProgressIndicator()
        );
      },
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white
      ), 
    );
  }
}
