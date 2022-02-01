import 'package:finder/screens/gender/gender.dart';
import 'package:finder/screens/location/location.dart';
import 'package:finder/widgets/my_text_field.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
                            'Reset Your PAssword',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(left: 20.0,right: 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "New Password",
                                //  style: kBodyText2,
                              ),
                              MyTextField(
                                hintText: 'Your password',
                                inputType: TextInputType.text,
                              ),

                              Text(
                                "Confirm Password",
                                //  style: kBodyText2,
                              ),

                              MyTextField(
                                hintText: ' Re-enter your password ',
                                inputType: TextInputType.text,
                              ),

                            ],
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
                                  builder: (context) => Gender()));
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
