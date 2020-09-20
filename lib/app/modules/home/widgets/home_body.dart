import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../shared/configs/colors_config.dart';
import '../../../shared/configs/theme_config.dart';
import 'home_works.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  Size _size;

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: _size.width * .15, vertical: 30),
      child: Card(
        color: ColorsConfig().cardBackground,
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildAboutMe(),
              HomeWorks(parentContext: context),
              _buildTalks(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAboutMe() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('aboutMeTitle', style: themeData.textTheme.headline4.merge(TextStyle(color: ColorsConfig().textColor))).tr(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text('aboutMeDescription', style: themeData.textTheme.headline6.merge(TextStyle(color: ColorsConfig().textColor))).tr(),
        ),
      ],
    );
  }

  Widget _buildTalks() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20, bottom: 40),
          child: Text('talksTitle', style: themeData.textTheme.headline4.merge(TextStyle(color: ColorsConfig().textColor))).tr(),
        ),
      ],
    );
  }
}
