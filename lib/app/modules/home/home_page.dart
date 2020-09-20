import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/app/shared/configs/colors_config.dart';
import 'home_controller.dart';
import 'package:easy_localization/easy_localization.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  Size _size;

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: _size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [ColorsConfig().darkPurple, ColorsConfig().lightPurple],
          ),
        ),
        child: Column(
          children: <Widget>[
            Text('login-label').tr(),
            Text('Teste'),
          ],
        ),
      ),
    );
  }
}
