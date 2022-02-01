import 'package:finder/models/profiles.dart';
import 'package:finder/screens/home/widgets/card_stack.dart';
import 'package:finder/screens/home/widgets/matches.dart';
import 'package:flutter/material.dart';



final MatchEngine matchEngine = new MatchEngine(
  matches: demoProfile.map((Profile profile) {
    return new DateMatch(profile: profile);
  }).toList(),
);


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(

            actions: [
              Text('sss'),
            ],
          ),
         body: new CardStack(matchEngine: matchEngine),

        ),
      );

  }
}


/*
@override
void dispose() {
  super.dispose();
}
*/


@override
// TODO: implement wantKeepAlive
bool get wantKeepAlive => true;