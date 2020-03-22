import 'package:flutter/material.dart';
import 'package:ich_mache_es_richtig_richtig_oder/scoped-model/main-model.dart';
import 'package:scoped_model/scoped_model.dart';

import 'activity-start-button.dart';

class HealthPage extends StatefulWidget {
  const HealthPage({Key key}) : super(key: key);

  @override
  _HealthPageState createState() => _HealthPageState();
}

class _HealthPageState extends State<HealthPage> {
  Color buttonColor = Colors.lime;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Text("Allgemeine Gesundheit:"),
            ),

            ActivityStartButton(
              label: "Spaziergang",
              route: '/walk',
              visibilityStateVariable:
                  ScopedModel.of<MainModel>(context).getvisibleWalkIcon,
              iconfilename: "Icons_Abstand_400px.png",
              color: buttonColor,
            ),
            ActivityStartButton(
              label: "Kraftübungen",
              route: '/gym',
              visibilityStateVariable:
                  ScopedModel.of<MainModel>(context).getVisibleGymIcon,
              iconfilename: "Icons_Abstand_400px.png",
              color: buttonColor,
            ),
            ActivityStartButton(
              label: "Ausdauerübungen",
              route: '/run',
              visibilityStateVariable:
                  ScopedModel.of<MainModel>(context).getVisibleRunIcon,
              iconfilename: "Icons_Abstand_400px.png",
              color: buttonColor,
            ),
            ActivityStartButton(
              label: "Schlafen",
              route: '/sleep',
              visibilityStateVariable:
                  ScopedModel.of<MainModel>(context).getVisibleSleepIcon,
              iconfilename: "Icons_Schlafen_400px.png",
              color: buttonColor,
            ),
            ActivityStartButton(
              label: "Lüften",
              route: '/ventilate',
              visibilityStateVariable:
                  ScopedModel.of<MainModel>(context).getVisibleVentilateIcon,
              iconfilename: "Icons_Obst_400px.png",
              color: buttonColor,
            ),
            ActivityStartButton(
              label: "Trinken",
              route: '/drink',
              visibilityStateVariable:
                  ScopedModel.of<MainModel>(context).getVisibleDrinkIcon,
              iconfilename: "Icons_Obst_400px.png",
              color: buttonColor,
            ),
            ActivityStartButton(
              label: "Obst / Gemüse essen",
              route: '/eat',
              visibilityStateVariable:
                  ScopedModel.of<MainModel>(context).getVisibleEatIcon,
              iconfilename: "Icons_Obst_400px.png",
              color: buttonColor,
            ),

            //Image.asset("assets/images/logo.png"),
          ],
        ),
      ),
    );
  }
}
