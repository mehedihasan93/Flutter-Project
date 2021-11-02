import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled/home_page.dart';

List<String> images = [
  "images/profile_images/user_1.jpg",
  "images/profile_images/user_2.jpg",
  "images/profile_images/user_3.jpg",
  "images/profile_images/user_4.jpg",
  "images/profile_images/user_5.jpg",
  "images/profile_images/user_6.jpg",
  "images/profile_images/user_7.jpg",
  "images/profile_images/user_8.jpg",
  "images/profile_images/user_9.jpg",
  "images/profile_images/user_10.jpg",
  "images/Female_Profile_Icon.jpg",
  "images/Profile_Icon.jpg"
];

class MessengerPage extends StatefulWidget {
  const MessengerPage({Key? key}) : super(key: key);

  @override
  _MessengerPageState createState() => _MessengerPageState();
}

class _MessengerPageState extends State<MessengerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          icon: Icon(Icons.arrow_back,
            color: Color.fromRGBO(86, 86, 86, 1),
          ),
          iconSize: 20,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context)=>HomePage(),
              ),
            );
          },
        ),

        title: Text(
          "Messenger Page",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Color.fromRGBO(91, 91, 92, 1),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.refresh_outlined,
              color: Color.fromRGBO(100, 101, 103, 1),
            ),
            iconSize: 20,
            onPressed: () {
              Navigator.push(
                (context),
                MaterialPageRoute(
                  builder: (context)=>MessengerPage(),
                ),
              );
            },
          ),
        ],
      ),
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              height: MediaQuery.of(context).size.height/15,
              width: MediaQuery.of(context).size.width,
              child: Text(
                "Friends",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(0, 0, 0, .6),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((BuildContext context,int index){
              return Container(
               height: MediaQuery.of(context).size.height/5,
               width: MediaQuery.of(context).size.width/5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("${images[index]}"),
                    fit: BoxFit.scaleDown,
                  ),
                  border: Border.all(
                    style: BorderStyle.solid,
                    width: 3,
                    color: Color.fromRGBO(0, 0, 0, .6),
                  ),
                  shape: BoxShape.circle,
                ),
              );
            },
            childCount: images.length,
            ),
          ),
        ],
      ),
    );
  }
}
