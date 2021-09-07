import '../constants/constants.dart';
import '../models/data_model.dart';
import '../models/team_data.dart';
import '../widgets/team_list_builder.dart';
import 'package:flutter/material.dart';

class TournamentDisplay extends StatefulWidget {
  TournamentDisplay({Key? key}) : super(key: key);

  @override
  _TournamentDisplayState createState() => _TournamentDisplayState();
}

class _TournamentDisplayState extends State<TournamentDisplay> {
  @override
  Widget build(BuildContext context) {
    final teamOneDataCANADA = teams;
    final teamTwoUSA = teamUSA;
    final double columnWidth = singleCardWidth + cardsHorizontalSpacing;
    double mediaQuery = MediaQuery.of(context).size.longestSide;
    final double mainHeight = mediaQuery * 0.85;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(mainAppTitle),
      ),
      body: Container(
        height: mediaQuery,
        decoration: mainDecoration,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            height: totalCountryTeamCount > 8 ? mediaQuery * 1.5 : mainHeight,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                tournamentBuilder(
                    mainHeight: totalCountryTeamCount > 8
                        ? mediaQuery * 1.5
                        : mainHeight,
                    columnWidth: columnWidth,
                    teamDataOne: teamOneDataCANADA,
                    teamDataTwo: teamTwoUSA,
                    totalTeams:
                        totalCountryTeamCount), // Setting each side teams total either 8 or 16 with current dummy data.
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row tournamentBuilder(
      {required double mainHeight,
      required double columnWidth,
      required List<DataModel> teamDataOne,
      required List<DataModel> teamDataTwo,
      required int totalTeams}) {
    return Row(
      children: [
        ...tournamentSide(
            mainHeight: mainHeight,
            columnWidth: columnWidth,
            teamData: teamDataOne,
            totalTeams: totalTeams,
            teamDirection: true),
        ...tournamentSide(
            mainHeight: mainHeight,
            columnWidth: columnWidth,
            teamData: teamDataTwo,
            totalTeams: totalTeams,
            teamDirection: false),
      ],
    );
  }
}

// Builds each country group or sides of chart
List<Widget> tournamentSide(
    {required double mainHeight,
    required double columnWidth,
    required List<DataModel> teamData,
    required int totalTeams,
    required bool teamDirection}) {
  List<Widget> oneRound = [];
  int singleItemCount = 0;
  int roundsCounter = 0;
  int halfOfTotalTeams = totalTeams ~/ 2;
  // This fuction will find the winners of each round
  List<DataModel> findWinner(
      {required List<DataModel> allTeamScores, required int roundNumber}) {
    List<DataModel> winnersList = [];
    for (int i = 0; i < allTeamScores.length; i += 2) {
      if (allTeamScores.length > 1) {
        if (allTeamScores[i].rounds![roundNumber] >
            allTeamScores[i + 1].rounds![roundNumber]) {
          winnersList.add(allTeamScores[i]);
        } else {
          winnersList.add(allTeamScores[i + 1]);
        }
      }
    }
    roundsCounter < allTeamScores[0].rounds!.length
        ? roundsCounter++
        : roundsCounter = 0;
    return winnersList;
  }

  for (int i = 1; i <= halfOfTotalTeams; i++) {
    singleItemCount = i == halfOfTotalTeams ? 99 : totalTeams ~/ i;
    if (singleItemCount % 2 == 0 || singleItemCount == 99) {
      if (i != 7) {
        oneRound.add(Container(
          height: mainHeight,
          width: columnWidth,
          child: TeamListBuilder(
            teamInput: teamData,
            itemCount: singleItemCount == 99 ? 1 : singleItemCount,
            height: mainHeight,
            isRight: teamDirection,
            roundNumber: roundsCounter,
          ),
        ));
        teamData =
            findWinner(allTeamScores: teamData, roundNumber: roundsCounter);
      }
    }
  }
  return teamDirection ? oneRound : oneRound.reversed.toList();
}
