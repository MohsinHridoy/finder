import 'package:finder/models/stream.dart';
import 'package:flutter/material.dart';


Widget StreamModel(Stream1 model, int? index){
  return Container(
    decoration: BoxDecoration(
      color: Colors.purpleAccent,
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
    ),
    padding: EdgeInsets.all(16),
    margin: EdgeInsets.only(right: index != null ? 16 : 0, left: index == 0 ? 16 : 0),
    width: 220,
    //height: 100,
    child: Stack(
      //crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[

      /*  Align(
          alignment: Alignment.centerRight,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Text(
                "sssss",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),*/

       /* SizedBox(
          height: 8,
        ),
*/
        Container(
          height: 270,
              width: 280,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    model.image,

                  ),
                  fit: BoxFit.cover
                )
              ),

              /*child: Image.asset(
                fit: BoxFit.fitHeight,
              ),
*/

        ),

       /* SizedBox(
          height: 24,
        ),*/

        Container(
          height: 250,
          width: 220,

          child: Text(
            model.name,
            style: TextStyle(
              fontSize: 18
            ),
          ),
        ),



    /*    SizedBox(
          height: 8,
        ),

        Text(
          car.brand,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            height: 1,
          ),
        ),

        Text(
          "per " + (car.condition == "Daily" ? "day" : car.condition == "Weekly" ? "week" : "month"),
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),*/

      ],
    ),
  );
}