import '../models/data_model.dart';
import './custom_card.dart';
import 'package:flutter/material.dart';

class TeamListBuilder extends StatelessWidget {
  final List<DataModel> teamInput;
  final itemCount;
  final double height;
  final bool isRight;
  final direction = 'vertical';
  final int roundNumber;

  TeamListBuilder(
      {Key? key,
      required this.teamInput,
      required this.itemCount,
      required this.height,
      required this.isRight,
      required this.roundNumber})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => Container(
        height: height / itemCount,
        margin: EdgeInsets.all(0),
        child: Center(
          child: CustomCard(
            title: teamInput[index].name,
            subText:
                '${teamInput[index].group} [${teamInput[index].rounds![roundNumber]}]',
            logoUrl: 'assets/images/${teamInput[index].logo}',
            color: teamInput[index].color,
            arrowDirection: (index % 2) == 0 ? 'down' : 'up',
            isRight: isRight,
          ),
        ),
      ),
    );
  }
}
