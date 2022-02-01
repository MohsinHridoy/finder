import 'package:finder/models/chats_json.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LeftPanel extends StatelessWidget {
  final String? name;
  final String? caption;
  final String? songName;
  const LeftPanel({
    Key? key,
    @required this.size,
    this.name,
    this.caption,
    this.songName,
  }) : super(key: key);

  final Size? size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size!.width * 0.8,
      height: size!.height,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        /*  Text(
            name!,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            caption!,
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.music_note,
                color: Colors.white,
                size: 15,
              ),
              Flexible(
                child: Text(
                  songName!,
                  style: TextStyle(color: Colors.white, height: 1.5),
                ),
              )
            ],
          )*/

          Container(
            width: 260.00,
            height: 250.00,
         //   color: Colors.grey,
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(userMessages.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 40,
                          height: 70,
                          child: Stack(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.black26, width: 3)),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                userMessages[index]
                                                ['img']),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                              ),

                            
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 140,


                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                userMessages[index]['name'],
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.yellow,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width ,
                                child: Text(
                                  userMessages[index]['message'] +
                                      " - " +
                                      userMessages[index]['created_at'],
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white.withOpacity(0.8)),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),
              ),
            ) ,

          ),

          Container(
            width: 260.00,
            height: 50.00,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.3),

              borderRadius: BorderRadius.circular(28.00),

            ),


              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Say something....",
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),

                  Icon(
                    Icons.send,
                    color: Colors.white,
                  )
                ],
              ),



          )
        ],
      ),
    );
  }
}