
import 'package:basesweb/ui/shared/custom_app_menu.dart';
import 'package:flutter/material.dart';

class MainLayoutPage extends StatelessWidget {
  
  final Widget child;

  MainLayoutPage({
    Key? key,
    required this.child
  });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CustomAppMenu(),
            const Spacer(),
            Expanded(child: child),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}