import 'package:finder/screens/resetpassword/resetpassword.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,

      body: SafeArea(
        child: CustomScrollView(
          reverse: true,
          slivers: [
          SliverFillRemaining(
          hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [



                Container(
                  child: Column(
                    children: [
                      Container(
                        height: 400.00,
                        child: Image.asset(
                            'assets/images/images.PNG'
                        ),
                      ),

                      Center(
                        child: Text(
                          'Enter Your Email',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),

                      Text(
                          "We Will Send You An One Time Verification code"
                      ),

                      SizedBox(
                        height: 25,
                      ),
                      Text(
                          "Enter Email Address"
                      ),

                      SizedBox(
                        height: 25,
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 70.0,right: 70.0),
                        child: Theme(
                          data: new ThemeData(
                              primaryColor: Colors.red,
                              accentColor: Colors.orange,
                              hintColor: Colors.yellow
                          ),
                          child: new TextField(
                            decoration: new InputDecoration(
                                hintText: "example@example.com",
                                //   labelText: "Email",
                                labelStyle: new TextStyle(color: const Color(0xFF424242)),
                                border: new UnderlineInputBorder(
                                    borderSide:  BorderSide(
                                        color: Colors.red
                                    )
                                )
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

                SizedBox(
                  height: 30.0,
                ),


                Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ResetPassword()));
                      },
                      child:Container(

                        height: 50.0,
                        margin: EdgeInsets.only(left: 20.0,right: 20.0),

                        child: Material(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Colors.white,

                          child: Center(
                              child:Text(
                                  "Submit"

                              )
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),


              ],

            ),
        )
        ],

        ),
      ),

    );
  }
}


