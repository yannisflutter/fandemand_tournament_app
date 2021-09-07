import 'package:flutter/material.dart';

// This is a model to build just one team for tournament
class DataModel {
  final int? id;
  final String? name;
  final String? logo;
  final List? rounds;
  final String? group;
  final Color? color;
  DataModel(
      {this.id, this.name, this.logo, this.rounds, this.group, this.color});
}
