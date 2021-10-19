import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled/home_page.dart';

import 'models/following_model.dart';

List<Following> following = [
 Following(image: "images/Profile_Icon.jpg" , name: "Sakib Al Hasan", date: "${DateTime.now()}" ),
  Following(image: "images/Female_Profile_Icon", name: "Joya Ahsan", date: "${DateTime.now()}"),
  Following(image: "images/Female_Profile_Icon", name: "Purnima", date: "${DateTime.now()}" ),
  Following(image: "images/Female_Profile_Icon", name: "Mehjabin Chowdhury", date: "${DateTime.now()}" ),
  Following(image: "images/Female_Profile_Icon", name: "Tanjin Tisha", date: "${DateTime.now()}" ),
  Following(image: "images/Female_Profile_Icon", name: "Nusrat Imroj Tisha", date: "${DateTime.now()}" ),
  Following(image: "images/Profile_Icon.jpg" , name: "Chanchoal Chowdhury", date: "${DateTime.now()}" ),
  Following(image: "images/Profile_Icon.jpg" , name: "Tamim IQbal", date: "${DateTime.now()}"),
  Following(image: "images/Profile_Icon.jpg" , name: "Mushfiqur Rahim", date: "${DateTime.now()}"),
  Following(image: "images/Profile_Icon.jpg" , name: "Mashrafi Bin Mortuza", date: "${DateTime.now()}" ),
];

class FollowingPage extends StatefulWidget {
  const FollowingPage({Key? key}) : super(key: key);

  @override
  _FollowingPageState createState() => _FollowingPageState();
}

class _FollowingPageState extends State<FollowingPage> {
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
            "Following Page",
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
                      builder: (context)=>FollowingPage()
                  ),
                );
              },
            ),


          ],
      ),

        body: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: following.length,
                itemBuilder: (BuildContext context,int index){
                return Container(
                height: MediaQuery.of(context).size.height/10,
                width: MediaQuery.of(context).size.width,
                  child: Row(
                 children: [
                   
                 ],
                ),
                );
            },
          ),
        ),
        ),
    );
  }
}
