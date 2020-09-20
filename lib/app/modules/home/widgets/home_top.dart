import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../shared/configs/colors_config.dart';
import '../../../shared/configs/theme_config.dart';
import '../../../shared/configs/url_config.dart';
import '../../../shared/models/enums/language_enum.dart';
import '../../../shared/utils/language_utils.dart';
import '../../../shared/utils/url_launcher_utlis.dart';

class HomeTop extends StatefulWidget {
  final BuildContext parentContext;

  const HomeTop({Key key, @required this.parentContext}) : super(key: key);

  @override
  _HomeTopState createState() => _HomeTopState();
}

class _HomeTopState extends State<HomeTop> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLanguages(),
        _buildProfile(),
        _buildSocialMedias(),
      ],
    );
  }

  Widget _buildLanguages() {
    return Row(
      children: [
        _buildLanguageCard(text: 'PT', language: LanguageEnum.PT),
        _buildLanguageCard(text: 'EN', language: LanguageEnum.EN),
      ],
    );
  }

  Widget _buildLanguageCard({@required String text, @required LanguageEnum language}) {
    return InkWell(
      child: Container(
        width: 40,
        height: 40,
        child: Card(
          child: Center(child: Text(text, style: TextStyle(color: Colors.black))),
        ),
      ),
      onTap: () => LanguageUtils.changeLanguage(context: widget.parentContext, languageEnum: language),
    );
  }

  Widget _buildProfile() {
    return Column(
      children: [
        _buildImage(),
        Text('name', style: themeData.textTheme.headline4).tr(),
        Text('jobTitle', style: themeData.textTheme.headline6).tr(),
      ],
    );
  }

  Widget _buildImage() {
    return CircleAvatar(
      radius: 80,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 77,
        backgroundImage: AssetImage('assets/images/eu.jpg'),
      ),
    );
  }

  Widget _buildSocialMedias() {
    return Row(
      children: [
        _buildSocialMediaCard(icon: FontAwesomeIcons.linkedinIn, url: UrlConfig.linkedIn),
        _buildSocialMediaCard(icon: FontAwesomeIcons.github, url: UrlConfig.gitHub),
        _buildSocialMediaCard(icon: FontAwesomeIcons.twitter, url: UrlConfig.twitter),
        _buildSocialMediaCard(icon: FontAwesomeIcons.instagram, url: UrlConfig.instagram),
      ],
    );
  }

  Widget _buildSocialMediaCard({@required IconData icon, @required String url}) {
    return InkWell(
      child: Container(
        width: 40,
        height: 40,
        child: Card(
          child: Container(
            padding: EdgeInsets.all(4),
            child: Center(
              child: FaIcon(
                icon,
                color: ColorsConfig().darkPurple,
                size: 25,
              ),
            ),
          ),
        ),
      ),
      onTap: () => UrlLauncherUtils.launchUrl(url),
    );
  }
}
