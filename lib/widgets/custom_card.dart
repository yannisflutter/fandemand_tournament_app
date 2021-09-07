import '../constants/constants.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String? title, logoUrl, subText, arrowDirection;
  final bool? isRight;
  final Color? color;

  CustomCard(
      {Key? key,
      this.title,
      this.logoUrl,
      this.subText,
      this.arrowDirection,
      this.color,
      this.isRight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: singleCardHeight,
      width: singleCardWidth,
      clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.only(
          bottom: arrowDirection == 'up' ? 10 : 0,
          top: arrowDirection == 'down' ? 10 : 0),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          topLeft: (!isRight! && arrowDirection == 'up')
              ? Radius.zero
              : Radius.circular(cardCornerRadius),
          topRight: (isRight! && arrowDirection == 'up')
              ? Radius.zero
              : Radius.circular(cardCornerRadius),
          bottomLeft: (!isRight! && arrowDirection == 'down')
              ? Radius.zero
              : Radius.circular(cardCornerRadius),
          bottomRight: (isRight! && arrowDirection == 'down')
              ? Radius.zero
              : Radius.circular(cardCornerRadius),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            logoUrl!,
            width: 40,
            height: 40,
          ),
          SizedBox(
            width: 4,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title!,
                style: cardTileStyle,
              ),
              Text(
                subText!,
                style: cardSubTitleStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
