

import 'package:finder/screens/forgotpassword/forgetpassword.dart';
import 'package:finder/screens/register/register.dart';
import 'package:finder/widgets/my_password_field.dart';
import 'package:finder/widgets/my_text_button.dart';
import 'package:finder/widgets/my_text_field.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                          Text(
                            "You've been missed!",
                          //  style: kBodyText2,
                          ),
                          SizedBox(
                            height: 60,
                          ),
                          MyTextField(
                            hintText: 'Phone, email or username',
                            inputType: TextInputType.text,
                          ),
                          MyPasswordField(
                            isPasswordVisible: passwordVisibility,
                            onTap: () {
                          /*    setState(() {
                                passwordVisibility = !passwordVisibility;
                              });*/
                            },
                          ),

                          Container(
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Row(
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

                                     Text("Remember me")
                                   ],
                                 ),
                                 
                                 GestureDetector(
                                     onTap: (){
                                       Navigator.push(
                                           context,
                                           MaterialPageRoute(
                                               builder: (context) => ForgetPassword()));
                                     },
                                     child: Text("Forget Password?")

                                 )
                               ],
                             )
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
                                        "LOGIN"

                                    )
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 20.0,),

                          Container(
                            height: 50.0,
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.only(left: 20.0,right: 20.0),
                            child: OutlinedButton(


                              onPressed: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Register()));
                                },

                                child: Text("Register"),
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                                side: BorderSide(width: 2, color: Colors.green),
                              ),



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
                                  "LOGIN WITH FACEBOOK"

                              )
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 10.0,),

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
                                  "LOGIN WITH FACEBOOK"

                              )
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0,),


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
                                  "LOGIN WITH FACEBOOK"

                              )
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0,),

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
                        "Here is some sample"
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
