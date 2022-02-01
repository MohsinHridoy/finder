import 'package:finder/models/stream.dart';
import 'package:finder/screens/profile/widget/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:toggle_switch/toggle_switch.dart';



class ProfileDetails extends StatefulWidget {
  @override
  _ProfileDetailsState createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  List<String> chipList = [
    "Music",
    "Sports",
    "Shopping",

    "Games",
    "Travel",
    "Bears",
    "Drink",
    "Pets",
    "Dance",
    "Art",
    "Bars",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
       child: SingleChildScrollView(
         child: Column(
           children: [
             Container(
               height: 400.00,
               clipBehavior: Clip.antiAlias,

               width: MediaQuery.of(context).size.width,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30.0),bottomRight:Radius.circular(30.0) )
               ),
               child: SizedBox(
                   height: 400.0,
                   width: 350.0,
                   child: Carousel(
                     images: [
                       AssetImage("assets/images/img_1.jpeg"),
                       AssetImage("assets/images/img_2.jpeg"),
                       AssetImage("assets/images/img_3.jpeg"),
                     ],
                     dotSize: 8.0,
                     dotSpacing: 15.0,
                     dotColor: Colors.lightGreenAccent,
                     indicatorBgPadding: 5.0,
                     dotBgColor: Colors.purple.withOpacity(0.0),
                     borderRadius: true,
                     moveIndicatorFromBottom: 180,
                    // noRadiusForIndicator: true,
                   )
               ),
             ),
             Container(
               height: 160,
               width: MediaQuery.of(context).size.width,

               child: Padding(
                 padding: const EdgeInsets.all(18.0),
                 child: Column(
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text(
                           "Jessica 22",
                           style: TextStyle(
                             fontSize: 28.00,
                             fontWeight: FontWeight.bold,
                               color: Colors.black54

                           ),
                         ),

                         Container(
                           height: 35.00,
                           width: 130.00,
                           decoration: BoxDecoration(
                             color: Colors.purpleAccent,
                             borderRadius: BorderRadius.all(Radius.circular(20.0)),

                           ),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Icon(
                                 Icons.add,
                                 color: Colors.white,
                               ),
                                Text(
                                 "Follow",
                                 style: TextStyle(
                                     fontSize: 15.00,
                                     color: Colors.white,
                                     fontWeight: FontWeight.bold

                                 ),
                               ),
                             ],

                           ),
                         ),

                       ],
                     ),
                     SizedBox(
                       height: 10.0,
                     ),
                     Row(
                       children: [
                         Icon(
                           Icons.error,
                           size: 20.00,
                           color: Colors.black26,
                         ),
                         SizedBox(
                           width: 5.00,
                         ),
                         Text(
                           "IBA,University of Dhaka",
                           style: TextStyle(
                             color: Colors.black26
                           ),
                         )
                       ],
                     ),
                     SizedBox(
                       height: 10.0,
                     ),
                     Row(
                       children: [
                         Icon(
                           Icons.location_on,
                           size: 20.00,
                           color: Colors.black26,
                         ),
                         SizedBox(
                           width: 5.00,
                         ),
                         Text(
                           "24 km away",
                           style: TextStyle(
                             color: Colors.black26
                           ),
                         )
                       ],
                     ),

                     Divider(
                       thickness: 1.00,
                     )
                   ],
                 ),
               ),

             ),
             Container(
               height: 160,
               width: MediaQuery.of(context).size.width,

               child: Padding(
                 padding: const EdgeInsets.all(18.0),
                 child: Column(
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text(
                           "About",
                           style: TextStyle(
                               fontSize: 18.00,
                               fontWeight: FontWeight.bold,
                               color: Colors.black54
                           ),
                         ),




                       ],
                     ),
                     SizedBox(
                       height: 5.0,
                     ),
                     Row(
                       children: [

                         Text(
                           "simply dummy t"
                               "pesetting industry\n."
                               "Lorem Ipsum has been the industry's\n "
                               "standard dummy text ever \n since the 1500s,",
                           style: TextStyle(
                               color: Colors.black26
                           ),
                         )
                       ],
                     ),



                     Divider(
                       thickness: 1.00,
                     ),


                   ],
                 ),
               ),

             ),
             Padding(
               padding: const EdgeInsets.fromLTRB(18.0,0.0,18,0.0),
               child: Container(
                 height: 200,
                 width: MediaQuery.of(context).size.width,
                 child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                       "Passions",
                       style: TextStyle(
                           fontSize: 18.00,
                           fontWeight: FontWeight.bold,
                           color: Colors.black54
                       ),
                     ),

                     Container(
                         child: Wrap(
                           spacing: 5.0,
                           runSpacing: 5.0,
                           children: <Widget>[
                             choiceChipWidget(chipList),
                           ],
                         )),

                     Divider(
                       thickness: 1,
                     ),


                   ],
                 ),
               ),
             ),
             Container(
               // alignment: Alignment.center,
               margin: EdgeInsets.only(left: 110.0,right:100.0),
               height: 40.00,
               width: MediaQuery.of(context).size.width,
               child: ToggleSwitch(
                 minWidth: 90.0,
                 cornerRadius: 20.0,
                 activeBgColors: [[Colors.green[800]!], [Colors.red[800]!]],
                 activeFgColor: Colors.white,
                 inactiveBgColor: Colors.grey,
                 inactiveFgColor: Colors.white,
                 initialLabelIndex: 1,
                 totalSwitches: 2,
                 labels: ['Photos', 'Videos'],
                 radiusStyle: true,
                 onToggle: (index) {
                   print('switched to: $index');
                 },
               ),
             ),

             Container(
               height: 300,
               width: MediaQuery.of(context).size.width,

              child: GridView.count(
                 physics: BouncingScrollPhysics(),
                 childAspectRatio: 0.4 / 0.4,
                 crossAxisCount: 3,
                 crossAxisSpacing: 5,
                 mainAxisSpacing: 5,
                 children: getModelList().map((item) {
                   return GestureDetector(
                       onTap: () {
                       /*  Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => Video()),
                         );*/
                       },
                       child: StreamModel1(item,null)
                   );
                 }).toList(),
               ),
             ),
             SizedBox(
               height: 10.0,
             ),
             Container(
               height: 140,
               width: MediaQuery.of(context).size.width,

               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   RoundIconButton.large(
                     icon: Icons.near_me_disabled_sharp,
                     iconColor: Colors.red,
                     onPressed: () {
                       //TODO
                     },
                   ),
                   SizedBox(width: 5,),
                   RoundIconButton.small(
                     icon: Icons.star,
                     iconColor: Colors.blue,
                     onPressed: () {
                       //TODO
                     },
                   ),
                   SizedBox(width: 5,),

                   RoundIconButton.large(
                     icon: Icons.album_sharp,
                     iconColor: Colors.red,
                     onPressed: () {
                       //TODO
                     },
                   ),

                 ],
               ),
             ),
              SizedBox(
                height: 30.0,
              )
           ],
         ),
       ),
      ),
    );
  }
}


class choiceChipWidget extends StatefulWidget {
  final List<String> reportList;

  choiceChipWidget(this.reportList);

  @override
  _choiceChipWidgetState createState() => new _choiceChipWidgetState();
}

class _choiceChipWidgetState extends State<choiceChipWidget> {
  String selectedChoice = "";

  _buildChoiceList() {
    List<Widget> choices = [];
    widget.reportList.forEach((item) {
      choices.add(Container(
        padding: const EdgeInsets.all(2.0),
        child: ChoiceChip(
          label: Text(item),
          labelStyle: TextStyle(
              color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side:new  BorderSide(color: Colors.purpleAccent),



          ),
          backgroundColor: Color(0xffededed),
          selectedColor: Colors.purpleAccent,
          selected: selectedChoice == item,
          onSelected: (selected) {
            setState(() {
              selectedChoice = item;
            });
          },
        ),
      ));
    });
    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _buildChoiceList(),
    );
  }
}


Widget StreamModel1(Stream1 model, int? index){
  return Container(
    /*clipBehavior: Clip.antiAlias,

    decoration: BoxDecoration(
    //  color: Colors.purpleAccent,


    ),
    padding: EdgeInsets.all(16),
    margin: EdgeInsets.only(right: index != null ? 16 : 0, left: index == 0 ? 16 : 0),
    width: 270,*/
    //height: 100,
    child: Stack(
      //crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[


        Container(
          height: 270,
          width: 270,

          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
              image: DecorationImage(
                  image: AssetImage(
                    model.image,

                  ),
                  fit: BoxFit.cover
              )
          ),



        ),



      ],
    ),
  );
}