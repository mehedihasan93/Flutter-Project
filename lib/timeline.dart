import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled/home_page.dart';
import 'package:untitled/splash_screen.dart';

import 'models/timeline_model.dart';

List<String> images = [
  "images/Posts/Post_1.jpg",
  "images/Posts/Post_2.jpg",
  "images/Posts/Post_3.jpg",
  "images/Posts/Post_4.jpg",
  "images/Posts/Post_5.jpg",
  "images/Posts/Post_6.jpg",
  "images/Posts/Post_7.jpg",
  "images/Posts/Post_8.png",
  "images/Posts/Post_9.jpg",
  "images/Posts/Post_10.png",
];

List<Timelinemodel> timelinemodels = [
  Timelinemodel(username: "Abdur Razzak", profileImageURL: "images/Profile_Images/user_1.jpg", address: "", caption: "", postImageURL: "", likes: 6123),
  Timelinemodel(username: "chanchal choudhary", profileImageURL: "images/Profile_Images/user_2.jpg", address: "", caption: "", postImageURL: "", likes: 5129),
  Timelinemodel(username: "Fazlur Rahman Babu", profileImageURL: "images/Profile_Images/user_3.jpg", address: "", caption: "", postImageURL: "", likes: 3123),
  Timelinemodel(username: "Siam Ahmed", profileImageURL: "images/Profile_Images/user_4.jpg", address: "", caption: "", postImageURL: "", likes: 3710),
  Timelinemodel(username: "Arfan Nishu", profileImageURL: "images/Profile_Images/user_5.jpg", address: "", caption: "", postImageURL: "", likes: 2541),
  Timelinemodel(username: "Ziaul Faruq Apurba ", profileImageURL: "images/Profile_Images/user_6.jpg", address: "", caption: "", postImageURL: "", likes: 2910),
  Timelinemodel(username: "Ziaul Hoque Polash", profileImageURL: "images/Profile_Images/user_7.jpg", address: "", caption: "", postImageURL: "", likes: 2170),
  Timelinemodel(username: "Tasnia Farin", profileImageURL: "images/Profile_Images/user_8.jpg", address: "", caption: "", postImageURL: "", likes: 1905),
  Timelinemodel(username: "Nusrat Imrose Tisha", profileImageURL: "images/Profile_Images/user_9.jpg", address: "", caption: "", postImageURL: "", likes: 2345),
  Timelinemodel(username: "Joya Ahsan", profileImageURL: "images/Profile_Images/user_10.jpg", address: "", caption: "", postImageURL: "", likes: 1720),
];

class TimelinePage extends StatefulWidget {
  const TimelinePage({Key? key}) : super(key: key);

  @override
  _TimelinePageState createState() => _TimelinePageState();
}

class _TimelinePageState extends State<TimelinePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Color.fromRGBO(24, 24, 45, 1),
          ),
          iconSize: 25,
          onPressed: (){
            Navigator.push(
                context,
              MaterialPageRoute(
                  builder: (context)=>SplashScreen()
              ),
                );
          },
        ),
        title: Text(
            "Timeline",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
            color: Color.fromRGBO(24, 24, 45, .6),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              CupertinoIcons.person_circle_fill,
              color: Color.fromRGBO(24, 24, 45, .6),
            ),
            iconSize: 25,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context)=>HomePage()
                  ),
              );
            },
          ),
        ],
        backgroundColor: Color.fromRGBO(245, 245, 245, .6),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 20,),
            //top list view builder

            Container(
              height: MediaQuery.of(context).size.height/3.5,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 5),
                  itemCount: images.length,
                  itemBuilder: (BuildContext context, int index){
                  return Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width/3.5,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("${images[index]}"),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  );
                  }
              ),
            ),

            SizedBox(height: 10,),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                    "All Posts",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 27,
                    color: Color.fromRGBO(35, 35, 35, .8),
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
          ],



        ),
      ),
    );
  }
}

