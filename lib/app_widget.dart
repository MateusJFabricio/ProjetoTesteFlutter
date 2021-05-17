import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projetomeu/app_controller.dart';

import 'home_page.dart';

class AppWidget extends StatelessWidget
{
  final String titulo;
  const AppWidget({Key key, this.titulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child)
          {
            return MaterialApp(
              theme: ThemeData(
                  primarySwatch: Colors.red,
                  brightness: AppController.instance.isDarkTheme ? Brightness.dark : Brightness.light
              ),
              home: HomePage(),
            );
          }
        );
  }

}