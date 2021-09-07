import 'package:flutter/material.dart';

const mainDecoration = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Color(0xffFe68fe),
      Color(0xff8d33c1),
      Color(0xff3d2181),
    ],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
  ),
);
const String mainAppTitle = 'FanDemand Tournament';
const double singleCardHeight = 50,
    singleCardWidth = 130,
    cardsHorizontalSpacing = 25,
    cardCornerRadius = 25;
const Color appBarColor = Color(0xFF5c34bf);
const int totalCountryTeamCount = 8;
const TextStyle cardTileStyle = TextStyle(fontSize: 13),
    cardSubTitleStyle = TextStyle(fontSize: 10);
