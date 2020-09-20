import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../shared/configs/colors_config.dart';
import '../../../shared/configs/theme_config.dart';

class WorksContents {
  static Widget _buildCarousel(List<String> imgList) {
    return Container(
      width: 400,
      height: 600,
      margin: const EdgeInsets.only(right: 10),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 600,
          aspectRatio: 8 / 6,
          viewportFraction: 1,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 2),
        ),
        items: imgList.map((item) => _buildImage(item)).toList(),
      ),
    );
  }

  static Widget _buildImage(String image) {
    return Center(
      child: Image.network(
        image,
        fit: BoxFit.cover,
        width: 300,
      ),
    );
  }

  static Widget ceabsAuto(BuildContext context) {
    final List<String> imgList = [
      'assets/images/ceabs-logo.webp',
      'assets/images/ceabs-01.webp',
      'assets/images/ceabs-02.webp',
      'assets/images/ceabs-03.webp',
      'assets/images/ceabs-04.webp',
      'assets/images/ceabs-05.webp',
      'assets/images/ceabs-06.webp',
      'assets/images/ceabs-07.webp',
      'assets/images/ceabs-08.webp',
    ];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildCarousel(imgList),
        Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Text('AUTO CEABS', style: themeData.textTheme.headline4.merge(TextStyle(color: ColorsConfig().textColor))),
              ),
              Text('autoCeabsDescription', textAlign: TextAlign.justify).tr(),
            ],
          ),
        ),
      ],
    );
  }

  static Widget ceabsFinder(BuildContext context) {
    final List<String> imgList = [
      'assets/images/finder-logo.webp',
      'assets/images/finder-01.webp',
      'assets/images/finder-02.webp',
      'assets/images/finder-03.webp',
      'assets/images/finder-04.webp',
      'assets/images/finder-05.webp',
      'assets/images/finder-06.webp',
    ];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildCarousel(imgList),
        Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Text('FINDER CEABS', style: themeData.textTheme.headline4.merge(TextStyle(color: ColorsConfig().textColor))),
              ),
              Text('finderCeabsDescription', textAlign: TextAlign.justify).tr(),
            ],
          ),
        ),
      ],
    );
  }

  static Widget larApp(BuildContext context) {
    final List<String> imgList = [
      'assets/images/lar-app-logo.webp',
      'assets/images/lar-app-01.webp',
      'assets/images/lar-app-02.webp',
      'assets/images/lar-app-03.webp',
      'assets/images/lar-app-04.webp',
      'assets/images/lar-app-05.webp',
    ];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildCarousel(imgList),
        Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Text('LAR.app', style: themeData.textTheme.headline4.merge(TextStyle(color: ColorsConfig().textColor))),
              ),
              Text('larAppDescription', textAlign: TextAlign.justify).tr(),
            ],
          ),
        ),
      ],
    );
  }

  static Widget arduino(BuildContext context) {
    final List<String> imgList = [
      'assets/images/arduino-01.gif',
    ];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildCarousel(imgList),
        Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Text('Arduino', style: themeData.textTheme.headline4.merge(TextStyle(color: ColorsConfig().textColor))),
              ),
              Text('arduinoDescription', textAlign: TextAlign.justify).tr(),
            ],
          ),
        ),
      ],
    );
  }

  static Widget pokedex(BuildContext context) {
    final List<String> imgList = [
      'assets/images/pokedex-01.png',
      'assets/images/pokedex-02.png',
    ];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildCarousel(imgList),
        Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Text('Pokedex', style: themeData.textTheme.headline4.merge(TextStyle(color: ColorsConfig().textColor))),
              ),
              Text('pokedexDescription', textAlign: TextAlign.justify).tr(),
            ],
          ),
        ),
      ],
    );
  }

  static Widget patience(BuildContext context) {
    final List<String> imgList = [
      'assets/images/patience-01.png',
    ];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildCarousel(imgList),
        Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Text('Patience', style: themeData.textTheme.headline4.merge(TextStyle(color: ColorsConfig().textColor))),
              ),
              Text('patienceDescription', textAlign: TextAlign.justify).tr(),
            ],
          ),
        ),
      ],
    );
  }
}
