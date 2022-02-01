import 'package:finder/models/stream.dart';
import 'package:finder/screens/stream/video/video.dart';
import 'package:finder/screens/stream/widget/car_widget.dart';
import 'package:flutter/material.dart';


class Streaming extends StatefulWidget {
  @override
  _StreamingState createState() => _StreamingState();
}

class _StreamingState extends State<Streaming> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GridView.count(
              physics: BouncingScrollPhysics(),
              childAspectRatio: 1 / 1.35,
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              children: getModelList().map((item) {
                return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Video()),
                      );
                    },
                    child: StreamModel(item,null)
                );
              }).toList(),
            ),
          ),


        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: const Icon(Icons.add),
        backgroundColor: Colors.red,

      ),
    );
  }
}
