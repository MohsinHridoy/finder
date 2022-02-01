import 'package:finder/screens/interest/interest.dart';
import 'package:flutter/material.dart';


class Gender extends StatefulWidget {
  @override
  _GenderState createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  Color _colorContainer = Colors.blue;
  Color _colorContainer1 = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Select your Gender",
                style: TextStyle(
                  fontSize: 20.00,
                  fontWeight: FontWeight.bold
                ),
              ),

              Center(
                child: Container(
                  height: 400,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                         setState(() {
                           _colorContainer = _colorContainer == Colors.red ?
                           Colors.blue :
                           Colors.red;

                         });
                        },

                        child: Container(
                          height: 170,
                          width: 170,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _colorContainer,



                          ),


                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                               Container(
                                 height: 100,
                                 width: 100,
                                   decoration: new BoxDecoration(
                                       image: new DecorationImage(
                                         image: new AssetImage("assets/images/maleicon.png"),
                                         fit: BoxFit.fill,
                                       )
                                   )
                               ),
                                Text(
                                  "Male"
                                ),
                              ],
                            ),

                          /*child: AssetImage(
                    "ssssssssssssssssss"
                  ),*/
                        ),
                      ),

                      SizedBox(
                        height: 10,
                      ),

                      GestureDetector(
                        onTap: () {
                         setState(() {
                           _colorContainer1 = _colorContainer1 == Colors.red ?
                           Colors.grey :
                           Colors.red;

                         });
                        },

                        child: Container(
                          height: 170,
                          width: 170,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _colorContainer1,



                          ),


                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                               Container(
                                 height: 100,
                                 width: 100,
                                   decoration: new BoxDecoration(
                                       image: new DecorationImage(
                                         image: new AssetImage("assets/images/maleicon.png"),
                                         fit: BoxFit.fill,
                                       )
                                   )
                               ),
                                Text(
                                  "Male"
                                ),
                              ],
                            ),

                          /*child: AssetImage(
                    "ssssssssssssssssss"
                  ),*/
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Interest()));
                },
                child: Container(
                  height: 45.00,
                  width: 320.00,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),

                  ),
                  child: Center(
                    child: Text(
                      "Next",
                      style: TextStyle(
                          fontSize: 20.00,
                          color: Colors.white,
                          //fontWeight: FontWeight.bold

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
