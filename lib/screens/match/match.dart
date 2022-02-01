import 'package:finder/screens/profiledetails/profiledetails.dart';
import 'package:flutter/material.dart';


class Match1 extends StatefulWidget {
  @override
  _MatchState createState() => _MatchState();
}

class _MatchState extends State<Match1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              SizedBox(
                height: 30.00,
              ),
              Container(
                height: 90.00,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Text(
                      "Congratulations",
                      style: TextStyle(
                        fontSize: 30.00,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "It's a Match!",
                      style: TextStyle(
                          fontSize: 26.00,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple
                      ),
                    ),

                  ],
                ),
              ),

              Container(
                height: 230,
                width: MediaQuery.of(context).size.width,
               // color: Colors.grey,

                child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Container(
                               width: 100.0,
                               height: 200.0,
                               decoration:BoxDecoration(
                                   image: DecorationImage(
                                       image: AssetImage("assets/images/img2.jpg"),
                                       fit: BoxFit.cover,
                                       alignment: Alignment.center),
                                   shape: BoxShape.circle,
                                   border: Border.all(color: Colors.purpleAccent),

                           color: Colors.grey.withOpacity(0.2))
                           ),
                           SizedBox(
                            width: 10.00,
                           ),
                           Container(
                             width: 100.0,
                             height: 200.0,
                             decoration:BoxDecoration(
                                 image: DecorationImage(
                                     image: AssetImage("assets/images/img3.jpg"),
                                     fit: BoxFit.cover,
                                     alignment: Alignment.center),
                                 shape: BoxShape.circle,
                                 border: Border.all(color: Colors.purpleAccent),

                                 color: Colors.grey.withOpacity(0.2))
                           ),
                         ],
                       ),

                    Text(
                        "Freida 24",
                      style: TextStyle(
                        fontSize: 20.00,
                        fontWeight: FontWeight.bold
                      ),
                    )

                  ],
                ),

              ),

              Container(
                height: 90.00,
                width: MediaQuery.of(context).size.width,

                  child: Center(
                    child: Text(
                        "  You and Freida liked each other,\n"
                            "Lets ask her something interesting",
                      style: TextStyle(
                        color: Colors.black26
                      ),
                        ),
                  ),

              ),
             SizedBox(
               height: 70.00,
             ),
               GestureDetector(
                 onTap: (){
                   Navigator.push(
                       context,
                       MaterialPageRoute(
                         builder: (BuildContext context) => ProfileDetails(),
                       )
                   );
                 },
                 child: Container(
                  height: 45.00,
                  width: 300.00,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),

                  ),
                  child: Center(
                    child: Text(
                      "SEND MESSAGE",
                      style: TextStyle(
                          fontSize: 20.00,
                          color: Colors.white,
                          fontWeight: FontWeight.bold

                      ),
                    ),
                  ),
              ),
               ),
            ],

          ),
        ),
      ),
    );
  }
}
