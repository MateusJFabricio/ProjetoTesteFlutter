import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projetomeu/app_controller.dart';

class HomePage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage>
{
  int counter = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Tela Home')),
        actions: [CustomSwitcher()],
      ),
      body: Center(
        child: CustomSwitcher()
        ),
      floatingActionButton:
        FloatingActionButton(
          onPressed: onTap,
          child: Icon(Icons.print),
        ),
    );
  }

  onTap()
  {
    setState(() {
      counter++;
    });
  }

}

class CustomSwitcher extends StatelessWidget {
  const CustomSwitcher({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Text('Tema escuro'),
          Switch(
            value: AppController.instance.isDarkTheme,
            onChanged: switchOnChange,
          )]);
  }

  switchOnChange(value)
  {
    AppController.instance.changeTheme();

  }
}
