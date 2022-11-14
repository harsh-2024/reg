// To parse this JSON data, do
//
//     final technival = technivalFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class Technival {

  final Team? team;
  Technival({
    required this.team,
  });

  

  factory Technival.fromRawJson(String str) =>
      Technival.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Technival.fromJson(Map<String, dynamic> json) => Technival(
        team: json["team"] == null ? null : Team.fromJson(json["team"]),
      );

  Map<String, dynamic> toJson() => {
        "team": team == null ? null : team!.toJson(),
      };
}

class Team {
  Team({
    required this.teamname,
    required this.timesize,
    required this.groupA,
    required this.groupB,
  });

  final String? teamname;
  final String? timesize;
  final List<Group>? groupA;
  final List<Group>? groupB;

  factory Team.fromRawJson(String str) => Team.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Team.fromJson(Map<String, dynamic> json) => Team(
        teamname: json["teamname"] == null ? null : json["teamname"],
        timesize: json["timesize"] == null ? null : json["timesize"],
        groupA: json["groupA"] == null
            ? null
            : List<Group>.from(json["groupA"].map((x) => Group.fromJson(x))),
        groupB: json["groupB"] == null
            ? null
            : List<Group>.from(json["groupB"].map((x) => Group.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "teamname": teamname == null ? null : teamname,
        "timesize": timesize == null ? null : timesize,
        "groupA": groupA == null
            ? null
            : List<dynamic>.from(groupA!.map((x) => x.toJson())),
        "groupB": groupB == null
            ? null
            : List<dynamic>.from(groupB!.map((x) => x.toJson())),
      };
}

class Group {
  Group({
    required this.name,
    required this.rollNo,
    required this.branch,
    required this.email,
    required this.phoneNo,
  });

  final String name;
  final String rollNo;
  final String branch;
  final String email;
  final String phoneNo;

  factory Group.fromRawJson(String str) => Group.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Group.fromJson(Map<String, dynamic> json) => Group(
        name: json["name"] == null ? null : json["name"],
        rollNo: json["rollNo"] == null ? null : json["rollNo"],
        branch: json["branch"] == null ? null : json["branch"],
        email: json["email"] == null ? null : json["email"],
        phoneNo: json["phoneNo"] == null ? null : json["phoneNo"],
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
        "rollNo": rollNo == null ? null : rollNo,
        "branch": branch == null ? null : branch,
        "email": email == null ? null : email,
        "phoneNo": phoneNo == null ? null : phoneNo,
      };
}
