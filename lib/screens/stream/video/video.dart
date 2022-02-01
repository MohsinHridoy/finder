
import 'package:finder/models/data_json.dart';
import 'package:finder/screens/stream/video/tik_tok_icons.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'column_social_icon.dart';
import 'header_home_page.dart';
import 'left_panel.dart';



class Video extends StatefulWidget {
  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video>  with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

     _tabController = TabController(length: items.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return getBody();
  }

  Widget getBody() {
    var size = MediaQuery
        .of(context)
        .size;
    return RotatedBox(
      quarterTurns: 1,
      child: TabBarView(
        controller: _tabController,
        children: List.generate(items.length, (index) {
          return VideoPlayerItem(
            videoUrl: items[index]['videoUrl'],
            size: size,
            name: items[index]['name'],
            caption: items[index]['caption'],
            songName: items[index]['songName'],
            profileImg: items[index]['profileImg'],
            likes: items[index]['likes'],
            comments: items[index]['comments'],
            shares: items[index]['shares'],
            albumImg: items[index]['albumImg'],
          );
        }),
      ),
    );
  }
}

class VideoPlayerItem extends StatefulWidget {
  final String? videoUrl;
  final String? name;
  final String? caption;
  final String? songName;
  final String? profileImg;
  final String? likes;
  final String? comments;
  final String? shares;
  final String? albumImg;
  VideoPlayerItem(
      {Key? key,
        @required this.size,
        this.name,
        this.caption,
        this.songName,
        this.profileImg,
        this.likes,
        this.comments,
        this.shares,
        this.albumImg,
        this.videoUrl})
      : super(key: key);

  final Size? size;

  @override
  _VideoPlayerItemState createState() => _VideoPlayerItemState();
}

class _VideoPlayerItemState extends State<VideoPlayerItem> {
  VideoPlayerController? _videoController;
  bool isShowPlaying = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _videoController = VideoPlayerController.asset(widget.videoUrl!)
      ..initialize().then((value) {
        _videoController!.play();
        setState(() {

          isShowPlaying = false;
        });
      });


  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _videoController!.dispose();


  }
  Widget isPlaying(){
    return _videoController!.value.isPlaying && !isShowPlaying  ? Container() : Icon(Icons.play_arrow,size: 80,color: Colors.white.withOpacity(0.5),);
  }

  @override
  Widget build(BuildContext context) {
    return  Material(
      child: InkWell(
        onTap: () {
          setState(() {
            _videoController!.value.isPlaying
                ? _videoController!.pause()
                : _videoController!.play();
          });
        },
        child: RotatedBox(
          quarterTurns: -1,
          child: Container(
              height: widget.size!.height,
              width: widget.size!.width,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: widget.size!.height,
                    width: widget.size!.width,
                    decoration: BoxDecoration(color: Colors.black),
                    child: Stack(
                      children: <Widget>[
                        VideoPlayer(_videoController!),
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                            ),
                            child: isPlaying(),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: widget.size!.height,
                    width: widget.size!.width,
                    child: Padding(
                      padding:
                      const EdgeInsets.only(left: 15, top: 20, bottom: 10),
                      child: SafeArea(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            HeaderHomePage(),
                            Expanded(
                                child: Row(
                                  children: <Widget>[
                                   LeftPanel(
                                      size: widget.size,
                                   /*   name: "${widget.name}",
                                      caption: "${widget.caption}",
                                      songName: "${widget.songName}",*/
                                    ),

                                   /* Container(
                                      height: 20,
                                      width: 40,
                                      color: Colors.redAccent,
                                    ),*/
                                    RightPanel(
                                      size: widget.size,
                                      likes: "${widget.likes}",
                                      comments: "${widget.comments}",
                                      shares: "${widget.shares}",
                                      profileImg: "${widget.profileImg}",
                                      albumImg: "${widget.albumImg}",
                                    )
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}

class RightPanel extends StatelessWidget {
  final String? likes;
  final String? comments;
  final String? shares;
  final String? profileImg;
  final String? albumImg;
  const RightPanel({
    Key? key,
    @required this.size,
    this.likes,
    this.comments,
    this.shares,
    this.profileImg,
    this.albumImg,
  }) : super(key: key);

  final Size? size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: size!.height,
        child: Column(
          children: <Widget>[
            Container(
              height: size!.height * 0.5,

            ),
            Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    //getProfile(profileImg),
                    GestureDetector(
                      onTap: (){
                        print("ssss");
                        showDialog(
                            context: context,
                            builder: (BuildContext context) => errorDialog


                        );
                      },

                        child: Container(child: Icon(Icons.headset,))
                    ),
                    GestureDetector(
                      onTap: (){
                        showModalBottomSheet(context: context,
                          builder: (context) => getBottomSheet(),
                         backgroundColor: Colors.transparent,
                        );


                      },
                        child: getIcons(TikTokIcons.heart, likes, 35.0)
                    ),
                    getIcons(TikTokIcons.chat_bubble, comments, 35.0),
                    getIcons(TikTokIcons.reply, shares, 25.0),
                   // getAlbum(albumImg)
                  ],
                ))
          ],
        ),
      ),
    );

  }


}


Dialog errorDialog = Dialog(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)), //this right here
  child: Container(
    height: 200.0,
    width: 300.0,

    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding:  EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Save',
                style: TextStyle(color: Colors.lightBlueAccent,
                  fontSize:30.00,
                  fontWeight: FontWeight.bold

                ),),
              SizedBox(
                width: 3,
              ),
              Text('or', style: TextStyle(color: Colors.red),),
              SizedBox(
                width: 3,
              ),
              Text('Close', style: TextStyle(
                  color: Colors.red,
                  fontSize:30.00,
                  fontWeight: FontWeight.bold

              ),),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text('This stream?',
            style: TextStyle(
                color: Colors.grey,
              fontSize: 20
            ),),
        ),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 35.00,
            width: 120.00,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(20.0)),

            ),
            child: Center(
              child: Text(
                "Save",
                style: TextStyle(
                    fontSize: 10.00,
                    color: Colors.white,
                    fontWeight: FontWeight.bold

                ),
              ),
            ),
          ),
          Container(
            height: 35.00,
            width: 120.00,
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.all(Radius.circular(20.0)),

            ),
            child: Center(
              child: Text(
                "Close",
                style: TextStyle(
                    fontSize: 10.00,
                    color: Colors.white,
                    fontWeight: FontWeight.bold

                ),
              ),
            ),
          ),
        ],
      )
      /*  TextButton(onPressed: () {
           //  Navigator.of(context).pop();
        },


            child: Text('Got It!', style: TextStyle(color: Colors.purple, fontSize: 18.0),))*/
      ],
    ),
  ),
);

Widget BuildWidget(){
  final double circleRadius = 120.0;


  return Stack(
    alignment: Alignment.topCenter,
    children: <Widget>[
      Padding(
        padding:
        EdgeInsets.only(top: circleRadius / 2.0, ),  ///here we create space for the circle avatar to get ut of the box
        child: Container(
          height: 300.0,
          // width: double.infinity,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.white.withOpacity(0.1),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8.0,
                offset: Offset(0.0, 5.0),
              ),
            ],
          ),
          width: double.infinity,
          child: Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height: circleRadius/2,),

                  Text('Maria Elliot', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34.0),),
                  Text('Albany, NewYork', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, color: Colors.lightBlueAccent),),

                  SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text('Likes', style: TextStyle( fontSize: 20.0,  color: Colors.black54,),),
                            Text('12K', style: TextStyle( fontSize: 34.0, color: Colors.black87, fontFamily: ''),),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text('Wished', style: TextStyle( fontSize: 20.0,  color: Colors.black54),),
                            Text('12K', style: TextStyle( fontSize: 34.0, color: Colors.black87, fontFamily: ''),),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text('Purchased', style: TextStyle( fontSize: 20.0,  color: Colors.black54),),
                            Text('12K', style: TextStyle( fontSize: 34.0, color: Colors.black87, fontFamily: ''),),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )
          ),
        ),
      ),



      ///Image Avatar
      Container(
        width: circleRadius,
        height: circleRadius,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.purpleAccent,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8.0,
              offset: Offset(0.0, 5.0),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(4.0),
          child: Center(
            child: Container(
              child: Icon(Icons.person), /// replace your image with the Icon
            ),
          ),
        ),
      ),
    ],
  );

}



Widget getBottomSheet(){
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Stack(
        children: [


          Padding(
            padding: const EdgeInsets.only(top: 40, left: 0.0, right: 0.0),
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Center(
                      child: Text(
                        "Khan Akira",
                        style: TextStyle(
                            fontSize: 25.00,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(

                              "76K",
                              style: TextStyle(
                                  fontSize: 15.00,
                                  fontWeight: FontWeight.bold
                              ),

                            ),
                            Text("Following")
                          ],
                        ),
                        Column(
                          children: [
                            Text(

                              "155K",
                              style: TextStyle(
                                  fontSize: 15.00,
                                  fontWeight: FontWeight.bold
                              ),

                            ),
                            Text("Follower")
                          ],
                        ),
                        Column(
                          children: [
                            Text(

                              "!.2M",
                              style: TextStyle(
                                  fontSize: 15.00,
                                  fontWeight: FontWeight.bold
                              ),

                            ),
                            Text("Likes")
                          ],
                        ),
                      ],
                    ),
                 //   SizedBox(height: 50, child: Text("Postpone Start")),

                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 35.00,
                          width: 120.00,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),

                          ),
                          child: Center(
                            child: Text(
                              "Follow",
                              style: TextStyle(
                                  fontSize: 10.00,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold

                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 35.00,
                          width: 120.00,
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),

                          ),
                          child: Center(
                            child: Text(
                              "Chat",
                              style: TextStyle(
                                  fontSize: 10.00,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold

                              ),
                            ),
                          ),
                        ),
                      ],
                    )

                  ],),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

                /* Card(
                    color: Colors.orange,
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(50),
                     ),
                    child: FlatButton(onPressed: (){}, child: Text("Header"))),*/

              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.purple,

                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/img1.jpg"
                    ),
                    fit: BoxFit.cover
                  )

                ),
                /*child: AssetImage(
                  "ssssssssssssssssss"
                ),*/
              )

            ],
          ),
        ],
      ),
    ],
  );
}




