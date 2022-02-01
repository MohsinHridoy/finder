import 'package:finder/screens/match/match.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  bool pressed1 = true;
  bool pressed2 = true;
  bool pressed3 = true;
  String selected = "Second";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


               Container(
                 width: 370,
                 height: 560,
                 decoration: BoxDecoration(
                   color: Colors.white,

                   borderRadius: BorderRadius.circular(20.0),
                 ),

                 child: Stack(
                   children: [

                         Container(
                             clipBehavior: Clip.antiAlias,

                             decoration: BoxDecoration(
                               color: Colors.purple,

                               borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),topLeft: Radius.circular(20.0)),
                             ),
                             height: 270,
                             width: 370,
                             child: Carousel(
                               images: [
                                 NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
                                 NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
                                 ExactAssetImage("assets/images/LaunchImage.jpg")
                               ],
                               autoplay: true,
                               //  indicatorBgPadding: 0.0,
                               dotBgColor: Colors.purple.withOpacity(0.0),

                               dotSize: 4.0,
                               //   moveIndicatorFromBottom: 100.0,

                             )
                         ),
                         Positioned(
                           top: 270,



                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 GestureDetector(
                                   onTap: (){
                                     setState(() {
                                       selected = 'first';

                                       pressed1=!pressed1 ;

                                       Text("ss");
                                     });

                                   },
                                   child: Container(
                                     height: 100.0,
                                     width: 123.0,
                                     child: Container(
                                       height: 100.0,
                                       width: 100.0,
                                       decoration: BoxDecoration(
                                         border:pressed1 && selected == 'first'
                                             ? Border(
                                           top: BorderSide(width: 2.0, color: Colors.lightBlue.shade600),
                                           bottom: BorderSide(width: 2.0, color: Colors.lightBlue.shade900),
                                           left: BorderSide(width: 2.0, color: Colors.lightBlue.shade600),
                                           right: BorderSide(width: 2.0, color: Colors.lightBlue.shade600),


                                         ):Border(
                                           top: BorderSide(width: 2.0, color: Colors.grey),
                                           bottom: BorderSide(width: 2.0, color:  Colors.grey),
                                           left: BorderSide(width: 2.0, color:  Colors.grey),
                                           right: BorderSide(width: 2.0, color:  Colors.grey),


                                         ),
                                           color: Colors.black12

                                       ),


                                       child: Column(
                                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                         children: [

                                           Text(
                                             "1",
                                             style:pressed1 && selected == 'first'? TextStyle(
                                                 fontSize: 19,
                                                 color: Colors.purple
                                             ):TextStyle(
                                                 fontSize: 19,
                                                 color: Colors.black
                                             ),
                                           ),


                                           Text(
                                             "Month",
                                             style:pressed1 && selected == 'first'? TextStyle(
                                                 fontSize: 13,
                                                 color: Colors.purple
                                             ):TextStyle(
                                                 fontSize: 13,
                                                 color: Colors.black
                                             ),
                                           ),


                                           Text(
                                             "BDT 450/mo",
                                             style:pressed1 && selected == 'first'? TextStyle(
                                                 fontSize: 10,
                                                 color: Colors.purple
                                             ):TextStyle(
                                                 fontSize: 10,
                                                 color: Colors.black
                                             ),
                                           ),

                                           /*  Container(
                                             height: 100,
                                             width: 20,
                                             color: Colors.black,
                                           )
                                       */
                                         ],
                                       ),
                                     ),
                                   ),
                                 ),
                                 GestureDetector(
                                   onTap: (){
                                     setState(() {
                                       selected = 'Second';

                                       pressed2=!pressed2;

                                       Text("ss");
                                     });

                                   },
                                   child: Container(
                                     height: 100.0,
                                     width: 123.0,
                                     decoration: BoxDecoration(
                                       border:pressed2 &&  selected == 'Second'? Border(
                                         top: BorderSide(width: 2.0, color: Colors.lightBlue.shade600),
                                         bottom: BorderSide(width: 2.0, color: Colors.lightBlue.shade900),
                                         left: BorderSide(width: 2.0, color: Colors.lightBlue.shade600),
                                         right: BorderSide(width: 2.0, color: Colors.lightBlue.shade600),


                                       ):Border(
                                         top: BorderSide(width: 2.0, color: Colors.grey),
                                         bottom: BorderSide(width: 2.0, color:  Colors.grey),
                                         left: BorderSide(width: 2.0, color:  Colors.grey),
                                         right: BorderSide(width: 2.0, color:  Colors.grey),


                                       ),
                                         color: Colors.black12

                                     ),


                                     child: Column(
                                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                       children: [

                                         Text(
                                           "1",
                                           style:pressed2 && selected == 'Second'? TextStyle(
                                               fontSize: 19,
                                               color: Colors.purple
                                           ):TextStyle(
                                               fontSize: 19,
                                               color: Colors.black
                                           ),
                                         ),


                                         Text(
                                           "Month",
                                           style:pressed2 && selected == 'Second'? TextStyle(
                                               fontSize: 13,
                                               color: Colors.purple
                                           ):TextStyle(
                                               fontSize: 13,
                                               color: Colors.black
                                           ),
                                         ),


                                         Text(
                                           "BDT 450/mo",
                                           style:pressed2 && selected == 'Second'? TextStyle(
                                               fontSize: 10,
                                               color: Colors.purple
                                           ):TextStyle(
                                               fontSize: 10,
                                               color: Colors.black
                                           ),
                                         ),

                                         /*  Container(
                                           height: 100,
                                           width: 20,
                                           color: Colors.black,
                                         )
                                     */
                                       ],
                                     ),
                                   ),
                                 ),
                                 GestureDetector(
                                   onTap: (){
                                     setState(() {
                                       selected = 'Third';

                                       pressed3=!pressed3;

                                       Text("ss");
                                     });

                                   },
                                   child: Container(
                                     height: 100.0,
                                     width: 123.0,
                                     decoration: BoxDecoration(
                                       border:pressed3 && selected == 'Third'? Border(
                                         top: BorderSide(width: 2.0, color: Colors.lightBlue.shade600),
                                         bottom: BorderSide(width: 2.0, color: Colors.lightBlue.shade900),
                                         left: BorderSide(width: 2.0, color: Colors.lightBlue.shade600),
                                         right: BorderSide(width: 2.0, color: Colors.lightBlue.shade600),


                                       ):Border(
                                         top: BorderSide(width: 2.0, color: Colors.grey),
                                         bottom: BorderSide(width: 2.0, color:  Colors.grey),
                                         left: BorderSide(width: 2.0, color:  Colors.grey),
                                         right: BorderSide(width: 2.0, color:  Colors.grey),


                                       ),

                                       color: Colors.black12
                                     ),


                                     child: Column(
                                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                       children: [

                                         Text(
                                           "1",
                                           style:pressed3 && selected == 'Third'? TextStyle(
                                               fontSize: 19,
                                               color: Colors.purple
                                           ):TextStyle(
                                               fontSize: 19,
                                               color: Colors.black
                                           ),
                                         ),


                                         Text(
                                           "Month",
                                           style:pressed3 && selected == 'Third'? TextStyle(
                                               fontSize: 13,
                                               color: Colors.purple
                                           ):TextStyle(
                                               fontSize: 13,
                                               color: Colors.black
                                           ),
                                         ),


                                         Text(
                                           "BDT 450/mo",
                                           style:pressed3 && selected == 'Third'? TextStyle(
                                               fontSize: 10,
                                               color: Colors.purple
                                           ):TextStyle(
                                               fontSize: 10,
                                               color: Colors.black
                                           ),
                                         ),

                                         /*  Container(
                                           height: 100,
                                           width: 20,
                                           color: Colors.black,
                                         )
                                     */
                                       ],
                                     ),
                                   ),
                                 ),

                               ],
                             ),

                         ),

                     Positioned(
                       top:260,
                       left: 30.00,


                         child: pressed1 ==true && selected == 'first' ?Container(
                           height: 25.00,
                           width: 60.00,
                           decoration: BoxDecoration(
                             color: Colors.pink,
                             borderRadius: BorderRadius.all(Radius.circular(20.0)),

                           ),
                           child: Center(
                             child: Text(
                               "Save 20%",
                               style: TextStyle(
                                 fontSize: 10.00,
                                 color: Colors.white
                               ),
                             ),
                           ),
                         ):Visibility(
                           visible: false,
                           child: Container(
                             height: 30.00,
                             width: 40.00,
                             color: Colors.pink,

                           ),
                         ),

                     ),
                     Positioned(
                       top:260,
                       left: 150.00,


                       child: pressed1 ==true && selected == 'Second' ?Container(
                         height: 25.00,
                         width: 60.00,
                         decoration: BoxDecoration(
                           color: Colors.pink,
                           borderRadius: BorderRadius.all(Radius.circular(20.0)),

                         ),
                         child: Center(
                           child: Text(
                             "Save 50%",
                             style: TextStyle(
                                 fontSize: 10.00,
                                 color: Colors.white
                             ),
                           ),
                         ),
                       ):Visibility(
                         visible: false,
                         child: Container(
                           height: 30.00,
                           width: 40.00,
                           color: Colors.pink,

                         ),
                       ),

                     ),
                     Positioned(
                       top:260,
                       left: 280.00,


                       child: pressed1 ==true && selected == 'Third' ?Container(
                         height: 25.00,
                         width: 60.00,
                         decoration: BoxDecoration(
                           color: Colors.pink,
                           borderRadius: BorderRadius.all(Radius.circular(20.0)),

                         ),
                         child: Center(
                           child: Text(
                             "Save 70%",
                             style: TextStyle(
                                 fontSize: 10.00,
                                 color: Colors.white
                             ),
                           ),
                         ),
                       ):Visibility(
                         visible: false,
                         child: Container(
                           height: 30.00,
                           width: 40.00,
                           color: Colors.pink,

                         ),
                       ),

                     ),


                     Positioned(
                       top: 470.00,
                       left: 30.00,

                       child: GestureDetector(
                         onTap: (){
                           Navigator.push(
                               context,
                               MaterialPageRoute(
                                 builder: (BuildContext context) => Match1(),
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
                               "Continue",
                               style: TextStyle(
                                   fontSize: 20.00,
                                   color: Colors.white,
                                 fontWeight: FontWeight.bold

                               ),
                             ),
                           ),
                         ),
                       ),
                     )






                   ],
                 ),


               ),



          ],

        ),
      ),
    );
  }
}
