
import 'package:basesweb/locator.dart';
import 'package:basesweb/services/navigator_service.dart';
import 'package:basesweb/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {
  CustomAppMenu({key});

  @override
  Widget build(BuildContext context) {

     return LayoutBuilder(
      builder: (_,constraint)=>
        (constraint.maxWidth >520)
        ? _DesktopMenu()
        : _MovilMenu()
    );
  }
}

class _MovilMenu extends StatelessWidget {
  _MovilMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(width: 10),
          CustomFlatButton(
            text: 'Count Stateful',
            onPressed: ()=> locator<NavigatorServices>().navigateTo('/stateful'),
            color:Colors.black
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: 'Count with Provider',
            onPressed: ()=> locator<NavigatorServices>().navigateTo('/provider'),
            color:Colors.black
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: 'Other Page',
            onPressed: ()=> locator<NavigatorServices>().navigateTo('/abc123'),
            color:Colors.black
          ),
        ],
      ),
    );
  }
}

class _DesktopMenu extends StatelessWidget {
  _DesktopMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          const SizedBox(width: 10),
          CustomFlatButton(
            text: 'Contador Stateful',
            onPressed: ()=> locator<NavigatorServices>().navigateTo('/stateful'),
            color:Colors.black
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: 'Contador con Provider',
            onPressed: ()=> locator<NavigatorServices>().navigateTo('/provider'),
            color:Colors.black
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: 'Otra Pagina',
            onPressed: ()=> locator<NavigatorServices>().navigateTo('/abc123'),
            color:Colors.black
          ),
        ],
      ),
    );
  }
}