import 'package:flutter/material.dart';
import 'package:Karlorona/activities/designed-button.dart';
import 'package:Karlorona/activities/done-button.dart';
import 'package:scoped_model/scoped_model.dart';
import '../scoped-model/main-model.dart';
import '../model/activity.dart';

class HandsFacePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                  "Versuche Dir so wenig wie möglich in Dein Gesicht zu fassen!!!"),
            ),

            /// Mit der Klasse Navigator kann auf die routes aus der main.dart navigiert werden
            DoneButton(
              activityToAdd: Activity(
                  activity: Activities.touchface,
                  healthscore: 20,
                  hygienescore: 20,
                  psychscore: 10),
              onTap: () => ScopedModel.of<MainModel>(context)
                  .setVisibleHandfaceIcon(true),
            ),
            DesignedButton(
              child: Text("Info"),
              onPressed: () => Navigator.pushNamed(context, '/info_sneeze'),
            ),
          ],
        ),
      ),
    );
  }
}
