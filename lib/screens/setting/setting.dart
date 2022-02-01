import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';


class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool isToggled = false;
  bool isToggled1 = false;
  int _value = 6;
  int _value1 = 6;
  RangeValues _currentRangeValues = const RangeValues(20, 60);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
              "Setting",
          style: TextStyle(
            color: Colors.black
          ),
          ),



        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.black12 ,

      ),
      body: SingleChildScrollView(
        child: Container(

          child: Column(
             //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  child: Column(
                   // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Account Setting",
                        style: TextStyle(
                          fontSize: 15.00,
                          fontWeight: FontWeight.bold
                        ),
                      ),

                      SizedBox(
                        height: 5.0,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Phone Number",
                            style: TextStyle(
                                fontSize: 12.00,
                                color: Colors.black26
                            ),
                          ),

                          Text(
                            "+0171988957714",
                            style: TextStyle(
                                fontSize: 12.00,
                                color: Colors.black26
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 1,
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  child: Column(
                   // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Discovery Setting",
                        style: TextStyle(
                          fontSize: 15.00,
                          fontWeight: FontWeight.bold
                        ),
                      ),

                      SizedBox(
                        height: 5.0,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Location",
                            style: TextStyle(
                                fontSize: 12.00,
                                color: Colors.black26
                            ),
                          ),

                          Text(
                            "My Current Location",
                            style: TextStyle(
                                fontSize: 14.00,
                                color: Colors.purpleAccent
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 1,
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Global",
                            style: TextStyle(
                                fontSize: 15.00,
                                color: Colors.black54
                            ),
                          ),

                          FlutterSwitch(
                            height: 30.0,
                            width: 40.0,
                            padding: 4.0,
                            toggleSize: 25.0,
                            borderRadius: 14.0,
                            activeColor: Colors.purpleAccent,
                            value: isToggled,
                            onToggle: (value) {
                              setState(() {
                                isToggled = value;
                              });
                            },
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 1,
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Maximum Distance",
                            style: TextStyle(
                                fontSize: 15.00,
                                color: Colors.black,
                                fontWeight: FontWeight.bold

                            ),
                          ),

                          Text(
                            "$_value Km",
                            style: TextStyle(
                                fontSize: 15.00,
                                color: Colors.black,
                            //  fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),

                    Slider(
                        value: _value.toDouble(),
                        min: 1.0,
                        max: 120.0,

                        divisions: 5,
                        activeColor: Colors.purpleAccent,
                        inactiveColor: Colors.grey,
                        //label: 'Set volume value',
                        onChanged: (double newValue) {
                          setState(() {
                            _value = newValue.round();
                          });
                        },
                       /* semanticFormatterCallback: (double newValue) {
                          return '${newValue.round()} dollars';
                        }*/
                    )

                ],
                  ),
                ),
              ),

              Divider(
                thickness: 1,
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Show Me",
                        style: TextStyle(
                            fontSize: 15.00,
                            fontWeight: FontWeight.bold
                        ),
                      ),

                      SizedBox(
                        height: 5.0,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Women",
                            style: TextStyle(
                                fontSize: 12.00,
                                color: Colors.black26
                            ),
                          ),

                          Icon(
                            Icons.arrow_forward_ios,
                            size: 10.00,

                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 1,
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Age Range",
                            style: TextStyle(
                                fontSize: 15.00,
                                color: Colors.black,
                                fontWeight: FontWeight.bold

                            ),
                          ),

                          Text(
                            "$_currentRangeValues",
                            style: TextStyle(
                              fontSize: 15.00,
                              color: Colors.black,
                              //  fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),

                      RangeSlider(
                        values: _currentRangeValues,
                        min: 0,
                        max: 100,
                        divisions: 10,
                        activeColor: Colors.purpleAccent,
                        inactiveColor: Colors.grey,
                      /*  labels: RangeLabels(
                          _currentRangeValues.start.round().toString(),
                          _currentRangeValues.end.round().toString(),
                        ),*/
                        onChanged: (RangeValues values) {
                          setState(() {
                            _currentRangeValues = values;
                          });
                        },
                      )

                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 1,
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Show me on Finder",
                            style: TextStyle(
                                fontSize: 15.00,
                                color: Colors.black
                            ),
                          ),

                          FlutterSwitch(
                            height: 30.0,
                            width: 40.0,
                            padding: 4.0,
                            toggleSize: 25.0,
                            borderRadius: 14.0,
                            activeColor: Colors.purpleAccent,
                            value: isToggled1,
                            onToggle: (value) {
                              setState(() {
                                isToggled1 = value;
                              });
                            },
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 1,
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Contact No",
                        style: TextStyle(
                            fontSize: 15.00,
                            fontWeight: FontWeight.bold
                        ),
                      ),

                      SizedBox(
                        height: 5.0,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "01298291291829",
                            style: TextStyle(
                                fontSize: 12.00,
                                color: Colors.black26
                            ),
                          ),

                          Icon(
                            Icons.arrow_forward_ios,
                            size: 10.00,

                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 1,
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Email",
                        style: TextStyle(
                            fontSize: 15.00,
                            fontWeight: FontWeight.bold
                        ),
                      ),

                      SizedBox(
                        height: 5.0,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "example@example.com",
                            style: TextStyle(
                                fontSize: 12.00,
                                color: Colors.black26
                            ),
                          ),

                          Icon(
                            Icons.arrow_forward_ios,
                            size: 10.00,

                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 1,
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 74.00,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My Likes",
                        style: TextStyle(
                            fontSize: 15.00,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                            "Change Password",
                            style: TextStyle(
                                fontSize: 12.00,
                                color: Colors.redAccent
                            ),
                          ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Change emal",
                        style: TextStyle(
                            fontSize: 12.00,
                            color: Colors.black26
                        ),
                      ),
                      Divider(
                        thickness: 1,
                      ),




                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 74.00,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My Subcription",
                        style: TextStyle(
                            fontSize: 15.00,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Change Password",
                        style: TextStyle(
                            fontSize: 12.00,
                            color: Colors.redAccent
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Change emal",
                        style: TextStyle(
                            fontSize: 12.00,
                            color: Colors.black26
                        ),
                      ),
                      Divider(
                        thickness: 1,
                      ),




                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 74.00,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Account Setting",
                        style: TextStyle(
                            fontSize: 15.00,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Change Password",
                        style: TextStyle(
                            fontSize: 12.00,
                            color: Colors.redAccent
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Change emal",
                        style: TextStyle(
                            fontSize: 12.00,
                            color: Colors.black26
                        ),
                      ),
                      Divider(
                        thickness: 1,
                      ),




                    ],
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
