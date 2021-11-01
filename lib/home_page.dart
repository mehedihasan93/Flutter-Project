import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled/edit_page.dart';
import 'package:untitled/follower_page.dart';
import 'package:untitled/following_page.dart';
import 'package:untitled/posts_page.dart';
import 'package:untitled/timeline.dart';

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

List<String> friends = [
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

class HomePage extends StatefulWidget {
  const HomePage({Key?key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TimelinePage(),
              ),
            );
          },
          icon: Icon(Icons.arrow_back_ios_outlined),
          iconSize: 20,
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditPage(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 12,
                width: 80,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black45,
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Edit"),
                      Icon(
                        Icons.create_outlined,
                        size: 15,
                      ),
                    ]),
              ),
            ),
          ),
        ],
        title: Text("Personal Info"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Container(
            height: MediaQuery.of(context).size.height / .1,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                // User name and profile image Container start
                Container(
                  height: MediaQuery.of(context).size.height / 5.5,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Profile Image Container
                      Container(
                        height: MediaQuery.of(context).size.height / 6,
                        width: MediaQuery.of(context).size.width / 5,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage("images/Profile_Image.jpg"),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            color: Color.fromRGBO(52, 95, 97, 1),
                            width: 3,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),

                      // Address And Bio Container
                      Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        height: MediaQuery.of(context).size.height / 7,
                        child: Align(
                          alignment: Alignment.center,
                          child: RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan(
                                text: " Mehedi Hasan\n",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black87,
                                ),
                                children: [
                                  TextSpan(
                                    text:
                                    "44/65, Islamia College Road, Sonadanga, Boyra, Khulna",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey.shade400,
                                    ),
                                  ),
                                ]
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //bio container

                Container(
                  height: MediaQuery.of(context).size.height / 2.6,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 5,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //Bio text And create icon Row
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 13),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Bio",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Color.fromRGBO(0, 0, 0, .7),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 35,
                              ),
                              Icon(
                                Icons.create_rounded,
                                size: 20,
                                color: Color.fromRGBO(0, 0, 0, .6),
                              ),
                            ],
                          ),
                        ),

                        //Bio Container
                        Container(
                          height: MediaQuery.of(context).size.height / 3.5,
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "Hi! I'm Mehedi Hasan. "
                                "I'm an undergraduate student. I'm currently studying "
                                "Chemistry Department In Govt. Bl College,Khulna under "
                                "NU. Now I am working on flutter "
                                "development project which is a "
                                "ICTD bangladesh project. I'm staying "
                                "in khulna now.",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(0, 0, 0, .5),
                              wordSpacing: 3,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //Edit Profile , Follow , Following

                Container(
                  height: MediaQuery.of(context).size.height / 13,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 15,
                        width: MediaQuery.of(context).size.width / 4,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black26,
                            width: 3,
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: FlatButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PostsPage(),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.post_add,
                            size: 15,
                            color: Color.fromRGBO(0, 0, 0, .7),
                          ),
                          label: Text(
                            "Posts",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(0, 0, 0, .7),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 15,
                        width: MediaQuery.of(context).size.width / 3.5,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black26,
                            width: 3,
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: FlatButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FollowerPage(),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.follow_the_signs_outlined,
                            size: 15,
                            color: Color.fromRGBO(0, 0, 0, .7),
                          ),
                          label: Text(
                            "Follower",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Color.fromRGBO(0, 0, 0, .7)),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 15,
                        width: MediaQuery.of(context).size.width / 3.2,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black26,
                            width: 3,
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: FlatButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FollowingPage(),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.add_circle_outline,
                            size: 15,
                            color: Color.fromRGBO(0, 0, 0, 0.7),
                          ),
                          label: Text(
                            'Following',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(0, 0, 0, .7)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //photo Gallery container

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                    height: MediaQuery.of(context).size.height / .4,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        // Text Container

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              "All Photos",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(21, 21, 21, .7),
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              "Posts Photos",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(21, 21, 21, .5),
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 1.5,
                            width: MediaQuery.of(context).size.width,
                            child: GridView.builder(
                              gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                  childAspectRatio: 3 / 2),
                              itemCount: images.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  height:
                                  MediaQuery.of(context).size.height / 4,
                                  width: MediaQuery.of(context).size.width / 4,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("${images[index]}"),
                                        fit: BoxFit.fill),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              "Friends Photos",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(21, 21, 21, .5),
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 1.2,
                            width: MediaQuery.of(context).size.width,
                            child: GridView.builder(
                              gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                  childAspectRatio: 3 / 2),
                              itemCount: friends.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  height:
                                  MediaQuery.of(context).size.height / 4,
                                  width: MediaQuery.of(context).size.width / 4,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("${friends[index]}"),
                                        fit: BoxFit.fill),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}