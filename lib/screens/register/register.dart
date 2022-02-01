import 'package:finder/screens/login/login.dart';
import 'package:finder/widgets/my_password_field.dart';
import 'package:finder/widgets/my_text_field.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';


class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool passwordVisibility = true;
  bool isChecked=true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.purple,

      body: SafeArea(
        //to make page scrollable
        child: CustomScrollView(
          reverse: true,
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      fit: FlexFit.loose,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "LOVERIA",
                            //  style: kHeadline,
                          ),
                          SizedBox(
                            height: 10,
                          ),

                              Container(
                                width: MediaQuery.of(context).size.width,

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "You've been missed!",
                                      //  style: kBodyText2,
                                    ),
                                    SizedBox(
                                      height: 60,
                                    ),
                                    Text(
                                      "Name",
                                      //  style: kBodyText2,
                                    ),

                                    MyTextField(
                                      hintText: 'Enter yout username',
                                      inputType: TextInputType.text,
                                    ),

                                    Text(
                                      "Email",
                                      //  style: kBodyText2,
                                    ),

                                    MyTextField(
                                      hintText: 'Enter your email here',
                                      inputType: TextInputType.text,
                                    ),

                                    Text(
                                      "Mobile",
                                      //  style: kBodyText2,
                                    ),

                                    MyTextField(
                                      hintText: 'Enter your mobile no',
                                      inputType: TextInputType.text,
                                    ),

                                    Text(
                                      "Password",
                                      //  style: kBodyText2,
                                    ),

                                    MyTextField(
                                      hintText: ' your mobile ',
                                      inputType: TextInputType.text,
                                    ),

                                    Text(
                                      "Confirm Password",
                                      //  style: kBodyText2,
                                    ),

                                    MyTextField(
                                      hintText: 'Re-enter your password',
                                      inputType: TextInputType.text,
                                    ),
                                  ],
                                ),
                              ),









                          Container(


                                 child: Row(
                                    children: [
                                      Checkbox(
                                        checkColor: Colors.black,
                                        activeColor: Colors.yellow,
                                        //fillColor: MaterialStateProperty.resolveWith(),
                                        value: isChecked,
                                        shape: CircleBorder(),
                                        onChanged: (bool? value) {
                                          setState(() {
                                            isChecked = value!;
                                          });
                                        },
                                      ),

                                      Flexible(
                                        child: Text(
                                            "I agree to Loverias terms of servicez"
                                                " and privacy policy"
                                        ),
                                      )
                                    ],
                                  ),




                          ),

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
                                    child:Text(
                                        "Register"

                                    )
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 20.0,),

                        ],
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Dont't have an account? ",
                          style: kBodyText,
                        ),
                        GestureDetector(
                          onTap: () {
                            /* Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => RegisterPage(),
                              ),
                            );*/
                          },
                          child: Text(
                            'Register',
                            style: kBodyText.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        "Trouble Loging In?"
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
