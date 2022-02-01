import 'package:flutter/material.dart';



class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Column(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

         // Spacer(),

          Column(
            children: [
              Text("Loveria"),



              Align(
                alignment: Alignment.center,
                child: Text(
                    "By clicking Log in"
                ),

              ),

              GestureDetector(
                onTap: (){

                },
                child:Container(
                  margin: EdgeInsets.only(left: 20.0,right: 20.0),

                  height: 50.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Colors.white,

                    child: Center(
                        child:Text(
                            "LOGIN WITH FACEBOOK"

                        )
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20.0,),

              GestureDetector(
                onTap: (){

                },
                child:Container(

                  height: 50.0,
                  margin: EdgeInsets.only(left: 20.0,right: 20.0),

                  child: Material(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Colors.white,

                    child: Center(
                        child:GestureDetector(

                          child: Text(
                              "LOGIN WITH FACEBOOK"

                          ),
                        )
                    ),
                  ),
                ),
              ),
            ],
          ),
          //Spacer(),




              Container(
                alignment: Alignment.bottomCenter,


                child: Text(
                    "Trouble Loging In?"
                ),
              ),







        ],
      ),
    );
  }
}
