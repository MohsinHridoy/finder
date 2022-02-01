import 'package:finder/provider/signinprovider.dart';
import 'package:finder/screens/login/login.dart';
import 'package:finder/screens/root/root.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Test extends StatelessWidget {
  SignInProvider? signInProvider;
  @override
  Widget build(BuildContext context) {
    signInProvider=Provider.of<SignInProvider>(context);
    return Scaffold(
      backgroundColor: Colors.purple,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Text(
                           "sdss"
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Enterprise team\ncollaboration.",
                   //   style: kHeadline,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Text(
                        "Bring together your files, your tools, project and people.Including a new mobile and desktop application.",
                      //  style: kBodyText,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),

                    SizedBox(height: 30.00,),

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
                    SizedBox(height: 20.0,),
                    GestureDetector(
                      onTap: (){
                        print("google");
                        signInProvider!.googleLogin();

                       /* Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  Root()),
                        );*/

                      },
                      child:Container(

                        height: 50.0,
                        margin: EdgeInsets.only(left: 20.0,right: 20.0),

                        child: Material(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Colors.white,

                          child: Center(
                              child:Text(
                                  "LOGIN WITH GOOGLE"

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
                              child:Text(
                                  "LOGIN WITH NUMBER"

                              )
                          ),
                        ),
                      ),
                    ),


                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Login()));
                },
                child: Container(

                  height: 60,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    /*  Expanded(
                        child: MyTextButton(
                          bgColor: Colors.white,
                          buttonName: 'Register',
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => RegisterPage()));
                          },
                          textColor: Colors.black87,
                        ),
                      ),*/
                  /*    Expanded(
                        child: MyTextButton(
                          bgColor: Colors.transparent,
                          buttonName: 'Sign In',
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) => SignInPage(),
                                ));
                          },
                          textColor: Colors.white,
                        ),
                      ),*/

                      Text(
                        "Here is some sample",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
