import 'package:flutter/material.dart';
import 'data_model.dart';

// Some dummy data to use for tournament builder
// 16 team from two countries or provinces
// First team
final teams = [
  DataModel(
      id: 1,
      name: 'Toronto',
      group: 'Group A',
      rounds: [4, 3, 2, 3, 4],
      color: Colors.yellow[100],
      logo: '01-Toronto.png'),
  DataModel(
      id: 2,
      name: 'Montreal',
      group: 'Group A',
      rounds: [2, 1, 0, 0, 2],
      color: Colors.yellow[300],
      logo: '02-Montreal.png'),
  DataModel(
      id: 3,
      name: 'St Louis',
      group: 'Group B',
      rounds: [0, 1, 0, 0, 1],
      color: Colors.green[100],
      logo: '03-St-Louis.png'),
  DataModel(
      id: 4,
      name: 'Edmondton',
      group: 'Group B',
      rounds: [3, 0, 0, 0, 0],
      color: Colors.green[300],
      logo: '04-Edmonton.png'),
  DataModel(
      id: 5,
      name: 'Winnipeg',
      group: 'Group C',
      rounds: [3, 2, 0, 1, 4],
      color: Colors.blue[100],
      logo: '05-Winnipeg.png'),
  DataModel(
      id: 6,
      name: 'Colorado',
      group: 'Group C',
      rounds: [5, 3, 1, 1, 3],
      color: Colors.blue[300],
      logo: '06-Colorado.png'),
  DataModel(
      id: 7,
      name: 'Pittsburgh',
      group: 'Group D',
      rounds: [1, 1, 2, 0, 2],
      color: Colors.pink[100],
      logo: '07-Pittsburgh.png'),
  DataModel(
      id: 8,
      name: 'Boston',
      group: 'Group D',
      rounds: [0, 1, 0, 0, 1],
      color: Colors.pink[200],
      logo: '08-Boston.png'),
  DataModel(
      id: 9,
      name: 'Tampa Bay',
      group: 'Group E',
      rounds: [0, 0, 0, 0, 0],
      color: Colors.red[100],
      logo: '09-TampaBay.png'),
  DataModel(
      id: 10,
      name: 'Carolina',
      group: 'Group E',
      rounds: [3, 2, 4, 1, 4],
      color: Colors.red[300],
      logo: '10-Carolina.png'),
  DataModel(
      id: 11,
      name: 'Colorado',
      group: 'Group F',
      rounds: [3, 2, 4, 1, 3],
      color: Colors.blue[400],
      logo: '06-Colorado.png'),
  DataModel(
      id: 12,
      name: 'Pittsburgh',
      group: 'Group F',
      rounds: [1, 1, 2, 0, 2],
      color: Colors.pink[100],
      logo: '07-Pittsburgh.png'),
  DataModel(
      id: 13,
      name: 'Boston',
      group: 'Group G',
      rounds: [0, 1, 0, 0, 1],
      color: Colors.pink[200],
      logo: '08-Boston.png'),
  DataModel(
      id: 14,
      name: 'Tampa Bay',
      group: 'Group G',
      rounds: [1, 0, 0, 0, 0],
      color: Colors.red[300],
      logo: '09-TampaBay.png'),
  DataModel(
      id: 15,
      name: 'Carolina',
      group: 'Group H',
      rounds: [3, 2, 3, 1, 4],
      color: Colors.red[50],
      logo: '10-Carolina.png'),
  DataModel(
      id: 16,
      name: 'Minnesota',
      group: 'Group H',
      rounds: [1, 2, 4, 1, 3],
      color: Colors.red[200],
      logo: '16-Minnesota.png'),
];

// Second team

final teamUSA = [
  DataModel(
      id: 9,
      name: 'Tampa Bay',
      group: 'Group E',
      rounds: [6, 4, 2, 1, 2],
      color: Colors.red[100],
      logo: '09-TampaBay.png'),
  DataModel(
      id: 10,
      name: 'Carolina',
      group: 'Group E',
      rounds: [3, 2, 1, 1, 4],
      color: Colors.red[300],
      logo: '10-Carolina.png'),
  DataModel(
      id: 11,
      name: 'Colorado',
      group: 'Group F',
      rounds: [3, 2, 4, 1, 3],
      color: Colors.indigo[100],
      logo: '06-Colorado.png'),
  DataModel(
      id: 12,
      name: 'Pittsburgh',
      group: 'Group F',
      rounds: [1, 1, 2, 0, 2],
      color: Colors.indigo[300],
      logo: '07-Pittsburgh.png'),
  DataModel(
      id: 13,
      name: 'NYislander',
      group: 'Group G',
      rounds: [0, 1, 0, 0, 1],
      color: Colors.purple[50],
      logo: '13-NY-Islanders.png'),
  DataModel(
      id: 14,
      name: 'Vegas',
      group: 'Group G',
      rounds: [1, 3, 4, 3, 3],
      color: Colors.purple[200],
      logo: '14-Vegas.png'),
  DataModel(
      id: 15,
      name: 'Nashville',
      group: 'Group H',
      rounds: [3, 2, 4, 1, 5],
      color: Colors.lime[100],
      logo: '15-Nashville.png'),
  DataModel(
      id: 16,
      name: 'Minnesota',
      group: 'Group H',
      rounds: [1, 3, 4, 1, 4],
      color: Colors.lime[300],
      logo: '16-Minnesota.png'),
  DataModel(
      id: 9,
      name: 'Toronto',
      group: 'Group A',
      rounds: [4, 3, 2, 1, 3],
      color: Colors.yellow[100],
      logo: '01-Toronto.png'),
  DataModel(
      id: 10,
      name: 'Montreal',
      group: 'Group A',
      rounds: [2, 1, 0, 0, 2],
      color: Colors.yellow[300],
      logo: '02-Montreal.png'),
  DataModel(
      id: 11,
      name: 'St Louis',
      group: 'Group B',
      rounds: [0, 1, 0, 0, 1],
      color: Colors.green[100],
      logo: '03-St-Louis.png'),
  DataModel(
      id: 12,
      name: 'Edmondton',
      group: 'Group B',
      rounds: [3, 0, 0, 0, 0],
      color: Colors.green[300],
      logo: '04-Edmonton.png'),
  DataModel(
      id: 13,
      name: 'Winnipeg',
      group: 'Group C',
      rounds: [3, 2, 0, 1, 4],
      color: Colors.blue[100],
      logo: '05-Winnipeg.png'),
  DataModel(
      id: 14,
      name: 'Colorado',
      group: 'Group C',
      rounds: [5, 3, 1, 1, 3],
      color: Colors.blue[300],
      logo: '06-Colorado.png'),
  DataModel(
      id: 15,
      name: 'Pittsburgh',
      group: 'Group D',
      rounds: [1, 1, 2, 0, 2],
      color: Colors.pink[100],
      logo: '07-Pittsburgh.png'),
  DataModel(
      id: 16,
      name: 'Boston',
      group: 'Group D',
      rounds: [0, 1, 0, 0, 1],
      color: Colors.pink[200],
      logo: '08-Boston.png'),
];
