import 'package:finder/screens/home/homepage.dart';
import 'package:finder/screens/likes/likes.dart';
import 'package:finder/screens/message/message.dart';
import 'package:finder/screens/profile/profile.dart';
import 'package:finder/screens/stream/stream.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Root extends StatefulWidget {
  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        //backgroundColor: Colors.white,

        body: TabBarView(
          children: <Widget>[
            new HomePage(),
            new Likes(),
            new Message(),
            new Streaming(),
            new Profile(),

           // new CartPage(),
           // new UserPage(),
          ],
        ),
        bottomNavigationBar: Container(
          height: 60.00,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft:Radius.circular(20.00) ,topRight: Radius.circular(20.00)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],

          ),
          child: new TabBar(

            indicatorWeight: 2.0,

            tabs: [
              Tab(icon: Icon(Icons.home, color: Colors.grey)),
              Tab(icon: Icon(Icons.local_pizza, color: Colors.grey)),

              Tab(icon: Icon(Icons.message, color: Colors.grey)),
              Tab(icon: Icon(Icons.stream, color: Colors.grey)),

              Tab(icon: Icon(Icons.accessibility_new_outlined, color: Colors.grey)),
             // Tab(icon: Icon(Icons.shopping_cart, color: Colors.grey)),
            //  Tab(icon: Icon(Icons.person, color: Colors.grey)),
            ],
            labelColor: Colors.pinkAccent,
            unselectedLabelColor: Colors.black,

            indicatorColor: Colors.white,
          ),
        ),
      ),
    );;
  }
}
