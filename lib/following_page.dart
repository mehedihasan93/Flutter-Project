import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled/home_page.dart';

import 'models/following_model.dart';

List<Following> following = [
 Following(image: "images/Profile_Icon.jpg" , name: "Sakib Al Hasan", date: "${DateTime.now()}" ),
  Following(image: "images/Female_Profile_Icon.jpg", name: "Joya Ahsan", date: "${DateTime.now()}"),
  Following(image: "images/Female_Profile_Icon.jpg", name: "Purnima", date: "${DateTime.now()}" ),
  Following(image: "images/Female_Profile_Icon.jpg", name: "Mehjabin Chowdhury", date: "${DateTime.now()}" ),
  Following(image: "images/Female_Profile_Icon.jpg", name: "Tanjin Tisha", date: "${DateTime.now()}" ),
  Following(image: "images/Female_Profile_Icon.jpg", name: "Nusrat Imroj Tisha", date: "${DateTime.now()}" ),
  Following(image: "images/Profile_Icon.jpg" , name: "Chanchoal Chowdhury", date: "${DateTime.now()}" ),
  Following(image: "images/Profile_Icon.jpg" , name: "Tamim IQbal", date: "${DateTime.now()}"),
  Following(image: "images/Profile_Icon.jpg" , name: "Mushfiqur Rahim", date: "${DateTime.now()}"),
  Following(image: "images/Profile_Icon.jpg" , name: "Mashrafe Bin Mortaza", date: "${DateTime.now()}" ),
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView.builder(
                itemCount: following.length,
                  itemBuilder: (BuildContext context,int index){
                  return Container(
                  height: MediaQuery.of(context).size.height/6.5,
                  width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                   children: [
                   CircleAvatar(
                     backgroundImage: AssetImage("${following[index].image}"),
                     radius: 40,
                   ),
                     Expanded(
                         child: Container(
                           height: MediaQuery.of(context).size.height/5.5,
                           width: MediaQuery.of(context).size.width,
                           margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                           child: RichText(
                             textAlign: TextAlign.start,
                              text: TextSpan(
                                text: "${following[index].name}\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Color.fromRGBO(21, 21, 21, 1),
                                ),
                                children: [
                                  TextSpan(
                                    text: "${following[index].date}",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(79, 79, 79, 1),
                                    ),
                                  ),
                                ],
                              ) ,
                           ),
                         ),
                     ),
                   ],
                  ),
                  );
              },
          ),
            ),
        ),
        ),
    );
  }
}
