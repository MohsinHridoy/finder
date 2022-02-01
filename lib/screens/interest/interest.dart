
import 'package:finder/screens/location/location.dart';
import 'package:flutter/material.dart';

class Interest extends StatefulWidget {
  @override
  _InterestState createState() => _InterestState();
}

class _InterestState extends State<Interest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Choose Your Interests",
                style: TextStyle(
                    fontSize: 20.00,
                    fontWeight: FontWeight.bold
                ),
              ),

              Center(
                child: Container(
                  height: 400,
                  child: Wrap(
                    spacing: 5.0,
                    runSpacing: 5.0,
                    children: <Widget>[
                      filterChipWidget(chipName: 'Passions'),
                      filterChipWidget(chipName: 'Shopping'),
                      filterChipWidget(chipName: 'Gardening'),
                      filterChipWidget(chipName: 'Dance'),
                      filterChipWidget(chipName: 'Art '),
                      filterChipWidget(chipName: 'Blogging'), filterChipWidget(chipName: 'Passions'),
                      filterChipWidget(chipName: 'Shopping'),
                      filterChipWidget(chipName: 'Gardening'),
                      filterChipWidget(chipName: 'Dance'),
                      filterChipWidget(chipName: 'Art '),
                      filterChipWidget(chipName: 'Blogging'), filterChipWidget(chipName: 'Passions'),
                      filterChipWidget(chipName: 'Shopping'),
                      filterChipWidget(chipName: 'Gardening'),
                      filterChipWidget(chipName: 'Dance'),
                      filterChipWidget(chipName: 'Art '),
                      filterChipWidget(chipName: 'Blogging'),
                    ],
                  ),

                ),
              ),

              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Location()));
                },
                child: Container(
                  height: 45.00,
                  width: 320.00,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),

                  ),
                  child: Center(
                    child: Text(
                      "Next",
                      style: TextStyle(
                        fontSize: 20.00,
                        color: Colors.white,
                        //fontWeight: FontWeight.bold

                      ),
                    ),
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




class filterChipWidget extends StatefulWidget {
  final String? chipName;

  filterChipWidget({Key? key, this.chipName}) : super(key: key);

  @override
  _filterChipWidgetState createState() => _filterChipWidgetState();
}

class _filterChipWidgetState extends State<filterChipWidget> {
  var _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(widget.chipName!),
        //showCheckmark: false,
      /*  avatar: selected.contains(ms.items[i].text)
            ? Icon(Icons.check, color: Palette.BLUE)
            : Icon(Icons.add, color: Palette.GREY),*/
     // avatar: ,
      labelStyle: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.bold),
      selected: _isSelected,
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
            30.0),),
      backgroundColor: Colors.grey,
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
        });
      },
      selectedColor: Colors.purpleAccent,);
  }
}