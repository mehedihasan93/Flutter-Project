import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled/home_page.dart';
import 'package:untitled/models/follower_model.dart';

List<Follower> followers =[
  Follower(friends: 345, image: "images/Posts/Post_1.jpg", username: "Kazi Arafat"),
  Follower(friends: 675, image: "images/Posts/Post_2.jpg", username: "Abdur Rahman"),
  Follower(friends: 498, image: "images/Posts/Post_3.jpg", username: "Abir Hossain"),
  Follower(friends: 122, image: "images/Posts/Post_4.jpg", username: "Masudur Rahman"),
  Follower(friends: 56, image: "images/Posts/Post_5.jpg", username: "Yeasin Rahman"),
  Follower(friends: 23, image: "images/Posts/Post_6.jpg", username: "Morshedul Islam Babla"),
  Follower(friends: 290, image: "images/Posts/Post_7.jpg", username: "Kabir Ali"),
  Follower(friends: 178, image: "images/Posts/Post_8.png", username: "Hakimul Ezaz"),
  Follower(friends: 45, image: "images/Posts/Post_9.jpg", username: "Afif Hossain"),
  Follower(friends: 234, image: "images/Posts/Post_10.png", username: "Sheikh Yeamin"),
];

class FollowerPage extends StatefulWidget {
  const FollowerPage({Key? key}) : super(key: key);

  @override
  _FollowerPageState createState() => _FollowerPageState();
}

class _FollowerPageState extends State<FollowerPage> {
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
          "Follower Page",
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
                    builder: (context)=>FollowerPage(),
                ),
              );
            },
          ),
        ],
      ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 15,),
                itemCount: followers.length,
                itemBuilder: (BuildContext context,int index){
                  return Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                   height: MediaQuery.of(context).size.height/7,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 45,
                          backgroundImage: AssetImage("${followers[index].image}"),
                        ),

                            Expanded(
                            child: Align(
                              alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                        "${followers[index].username}",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20,
                                        color: Color.fromRGBO(21, 34, 45, 1)
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                    Text(
                                        "Friends: ${followers[index].friends}",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(86, 86, 90, 1),
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ],
                                ),
                            ),
                          ),
                      ],
                    ),
                  );
                }
            ),
          ),
        ),

    );
  }
}
