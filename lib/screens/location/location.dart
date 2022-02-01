import 'package:finder/screens/home/homepage.dart';
import 'package:finder/screens/resetpassword/resetpassword.dart';
import 'package:finder/screens/root/root.dart';
import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          Spacer(),
          Center(
              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 300.00,
                    child: Image.asset(
                        'assets/images/images.PNG'
                    ),
                  ),
                  Text("Allow Your Location",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,

                    ),
                      ),
                  Text("we will need your location "
                  ),
                ],
              ),

          ),

          Spacer(),

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
                color: Colors.purpleAccent,

                child: Center(
                    child:Text(
                        "Submit"

                    )
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.00,
          ),
          Container(
            height: 50.0,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 20.0,right: 20.0),
            child: OutlinedButton(


              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Root()));
              },

              child: Text("Register"),
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                side: BorderSide(width: 2, color: Colors.green),
              ),



            ),
          ),

          SizedBox(
            height: 70.0,
          )
        ],
      ),
    );
  }
}
