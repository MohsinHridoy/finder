import 'package:finder/models/likes_json.dart';
import 'package:finder/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';


class Likes extends StatefulWidget {
  @override
  _LikesState createState() => _LikesState();
}

class _LikesState extends State<Likes> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: getBody(),
        bottomSheet: getFooter(),
      ),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return ListView(
      padding: EdgeInsets.only(bottom: 90),
      children: [
        Container(
         // alignment: Alignment.center,
          margin: EdgeInsets.only(left: 20.0,right: 190.0),
          height: 40.00,
          width: 60.00,
          child: ToggleSwitch(
            minWidth: 90.0,
            cornerRadius: 20.0,
            activeBgColors: [[Colors.green[800]!], [Colors.red[800]!]],
            activeFgColor: Colors.white,
            inactiveBgColor: Colors.grey,
            inactiveFgColor: Colors.white,
            initialLabelIndex: 1,
            totalSwitches: 2,
            labels: ['6 Likes', 'Top Picks'],
            radiusStyle: true,
            onToggle: (index) {
              print('switched to: $index');
            },
          ),
        ),
      /*  Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                likes_json.length.toString() + " Likes",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                "Top Picks",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: black.withOpacity(0.5)),
              ),
            ],
          ),
        ),*/
        SizedBox(
          height: 10,
        ),
        Divider(
          thickness: 0.8,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Wrap(
            spacing: 5,
            runSpacing: 5,
            children: List.generate(likes_json.length, (index) {
              return Container(
                width: (size.width - 15) / 2,
                height: 250,
                child: Stack(
                  children: [
                    Container(
                      width: (size.width - 15) / 2,
                      height: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage((likes_json[index]['img'])),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      width: (size.width - 15) / 2,
                      height: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              colors: [
                                black.withOpacity(0.25),
                                black.withOpacity(0),
                              ],
                              end: Alignment.topCenter,
                              begin: Alignment.bottomCenter)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          likes_json[index]['active']
                              ? Padding(
                            padding:
                            const EdgeInsets.only(left: 8, bottom: 8),
                            child: Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: green,
                                      shape: BoxShape.circle),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Recently Active",
                                  style: TextStyle(
                                    color: white,
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                          )
                              : Padding(
                            padding:
                            const EdgeInsets.only(left: 8, bottom: 8),
                            child: Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: grey,
                                      shape: BoxShape.circle),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Offline",
                                  style: TextStyle(
                                    color: white,
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }),
          ),
        )
      ],
    );
  }

  Widget getFooter() {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 90,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Container(
              width: size.width - 70,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(colors: [primary_one, primary_two])
              ),
              child: Center(
                child: Text("SEE WHO LIKES YOU",
                    style: TextStyle(
                        color: white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
