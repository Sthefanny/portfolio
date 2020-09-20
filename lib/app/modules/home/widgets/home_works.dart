import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../shared/configs/colors_config.dart';
import '../../../shared/configs/theme_config.dart';
import '../../../shared/utils/url_launcher_utlis.dart';
import 'works_contents.dart';

class HomeWorks extends StatefulWidget {
  final BuildContext parentContext;

  const HomeWorks({Key key, @required this.parentContext}) : super(key: key);

  @override
  _HomeWorksState createState() => _HomeWorksState();
}

class _HomeWorksState extends State<HomeWorks> {
  Size _size;

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;

    return Container(
      height: 700,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20, bottom: 40),
            child: Text('myWorksTitle', style: themeData.textTheme.headline4.merge(TextStyle(color: ColorsConfig().textColor))).tr(),
          ),
          Expanded(child: _buildWorkList()),
        ],
      ),
    );
  }

  Widget _buildWorkList() {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      crossAxisSpacing: 30,
      mainAxisSpacing: 20,
      crossAxisCount: 3,
      childAspectRatio: (380 / 260),
      children: <Widget>[
        _buildCardWork(image: 'ceabs-logo.webp', onTap: () => _showWorkDialog(content: WorksContents.ceabsAuto(context), url: 'https://play.google.com/store/apps/details?id=br.com.ceabs.auto')),
        _buildCardWork(image: 'finder-logo.webp', onTap: () => _showWorkDialog(content: WorksContents.ceabsFinder(context), url: 'https://play.google.com/store/apps/details?id=br.com.ceabs.finder')),
        _buildCardWork(image: 'lar-app-logo.webp', onTap: () => _showWorkDialog(content: WorksContents.larApp(context), url: 'https://play.google.com/store/apps/details?id=com.lar.larapp')),
        _buildCardWork(image: 'arduino-logo.png', onTap: () => _showWorkDialog(content: WorksContents.arduino(context), url: 'https://github.com/Sthefanny/live/tree/master/arduino_home_control')),
        _buildCardWork(image: 'pokedex-logo.png', onTap: () => _showWorkDialog(content: WorksContents.pokedex(context), url: 'https://github.com/Sthefanny/live/tree/master/pokedex')),
        _buildCardWork(image: 'patience-logo.png', onTap: () => _showWorkDialog(content: WorksContents.patience(context), url: 'https://github.com/Sthefanny/live/tree/master/patience')),
      ],
    );
  }

  Widget _buildCardWork({@required String image, @required Function onTap}) {
    return InkWell(
        child: Container(
          child: Card(
            child: Image.network(
              'assets/images/$image',
              fit: BoxFit.cover,
            ),
          ),
        ),
        onTap: onTap);
  }

  Future<void> _showWorkDialog({@required Widget content, @required String url}) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (_) {
        return AlertDialog(
          content: Container(
            width: _size.width * .5,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: content,
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('goToProject').tr(),
              onPressed: () => UrlLauncherUtils.launchUrl(url),
            ),
            FlatButton(
              child: Text('close').tr(),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
