import 'package:flutter/material.dart';

enum Activities {
  washhands,
  safetydistance,
  smartphonedisinfect,
  sneezecough,
  touchface,
  walk,
  exercise, //Kraftübungen
  cardio, //Ausdauerübungen
  sleep,
  ventilate, //Lüften
  drink,
  eatVeggies, //Obst,Gemüse essen
}

class Activity {
  String timestamp;
  Activities activity;
  int hygienescore;
  int healthscore;
  int psychscore;

  DateTime get formattedTimestamp {
    return DateTime.parse(timestamp);
  }

  Activity(
      {@required this.activity,
      @required this.hygienescore,
      @required this.healthscore,
      @required this.psychscore,
      this.timestamp}) {
    if (this.timestamp == null) {
      this.timestamp = DateTime.now().toIso8601String();
    }
  }

  double calculateScore() {
    return double.parse(
        ((hygienescore + healthscore + psychscore) / 3).toStringAsFixed(2));
  }

  Map<String, dynamic> toMap() {
    return {
      'timestamp': timestamp,
      'activity': activity.toString(),
      'hygienescore': hygienescore,
      'healthscore': healthscore,
      'psychscore': psychscore,
    };
  }
}
