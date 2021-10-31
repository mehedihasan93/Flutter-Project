import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled/edit_page.dart';
import 'package:untitled/follower_page.dart';
import 'package:untitled/following_page.dart';
import 'package:untitled/posts_page.dart';
import 'package:untitled/splash_screen.dart';
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
  "images/Posts/Post_1o.png",
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

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
              context, MaterialPageRoute(builder: (context)=>TimelinePage(),
            ),
            );
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined),
        iconSize: 20,

      ),
      actions: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> EditPage(),
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
                color: Colors.black54,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Edit"),
                  Icon(Icons.create_outlined,
                    size: 15,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
      title: Text("Personal Info"),
      centerTitle: true,
    ),
      body: SingleChildScrollView(
        child: Align(
          alignment:Alignment.center,
          child: Container(
            height: MediaQuery.of(context).size.height/.5,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                //User name and profile image Container start
                Container(
                  height: MediaQuery.of(context).size.height/4,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      //Profile Image Container
                      Container(
                        height: MediaQuery.of(context).size.height/1.8,
                        width: MediaQuery.of(context).size.width/3.5,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage("images/Profile_Image.jpg"),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            color: Color.fromRGBO(52, 96, 97, 1),
                            width: 3,
                            style: BorderStyle.solid,

                          ),

                        ),
                      ),

                      //Address and Bio Container
                      Container(
                        height: MediaQuery.of(context).size.height/1.5,
                        width: MediaQuery.of(context).size.width/3,
                        child: Align(
                          alignment: Alignment.center,
                          child: RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan (
                              text: "Mehedi Hasan\n",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w800,
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                    text: "44/65, Islamia College Road, Boyra, Khulna",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey.shade400,
                                    ),
                                ),
                              ],
                            ) ,
                          ),
                        ),

                      ),
                    ],
                  ),
                ),

                      //bio container
              Container(
                height: MediaQuery.of(context).size.height/3.3,
                width: MediaQuery.of(context).size.width,
                child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5
                 ),

                  child:  Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [

                  //Bio Text and create icon Row
                   Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Bio",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Color.fromRGBO(0, 0, 0, .5),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/35,
                    ),
                    Icon(
                        Icons.create_rounded, size: 20,color: Color.fromRGBO(0, 0, 0, .5),
                   ),
                   ],
                    ),

                   // Bio Container
                   Container(
                    height: MediaQuery.of(context).size.height/5,
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "Hi! I'm Mehedi Hasan."
                      "Now I'm training on Flutter App Development"
                      " under ICTD in Khulna",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(0, 0, 0, .4),
                      wordSpacing: 3,
                    ),
                    textAlign: TextAlign.justify,
                   ),
                  ),
                 ],
               ),
              ),
            ),

              //Edit profile , follow, following

            Container(
              height: MediaQuery.of(context).size.height/10,
              width: MediaQuery.of(context).size.width,
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: MediaQuery.of(context).size.height/15,
                width: MediaQuery.of(context).size.width/4.5,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black26,
                    width:3,
                    style: BorderStyle.solid,
                  ),
                ),
                child: FlatButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (Context)=>PostsPage()
                          ),
                      );
                    },
                    icon: Icon(Icons.post_add,
                      size: 15,
                      color: Color.fromRGBO(0, 0, 0, .5),
                    ),
                  label: Text(
                      "Posts",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(0, 0, 0, .5),
                    ),
                  ),
                ),
              ),
              Container(
              height: MediaQuery.of(context).size.height/15,
              width: MediaQuery.of(context).size.width/3.5,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black26,
                  width:3,
                  style: BorderStyle.solid,
             ),
             ),
                child: FlatButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (Context)=>FollowingPage()
                        ),
                      );
                    },
                    icon: Icon(Icons.follow_the_signs_outlined,
                      size: 15,
                      color: Color.fromRGBO(0, 0, 0, .5),
                    ),
                  label: Text(
                      "Following",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(0, 0, 0, .5),
                    ),
                  ),
            ),
              ),
              Container(
              height: MediaQuery.of(context).size.height/15,
              width: MediaQuery.of(context).size.width/3.5,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black26,
                  width:3,
                  style: BorderStyle.solid,
                ),
               ),
                child: FlatButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (Context)=>FollowerPage()
                      ),
                    );
                  },
                  icon: Icon(Icons.add_circle_outline,
                    size: 15,
                    color: Color.fromRGBO(0, 0, 0, .5),
                  ),
                  label: Text(
                    "Follower",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(0, 0, 0, .5),
                    ),
                  ),
                ),
              ),
              ],
             ),
            ),

                //photo Gallery container

                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [

                      // Text Container

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15,),
                        child: Container(
                          height: MediaQuery.of(context).size.height/15,
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                              "All Photos",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(21, 21, 21, .5),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        child: Container(
                          height: MediaQuery.of(context).size.height/1.5,
                          width: MediaQuery.of(context).size.width,
                          child: GridView.builder(
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                childAspectRatio: 3/2,
                              ),
                              itemCount: images.length,
                              itemBuilder: (BuildContext context, int index){
                                return Container(
                                  height: MediaQuery.of(context).size.height/4,
                                  width: MediaQuery.of(context).size.width/4,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("${images[index]}"),
                                      fit: BoxFit.fill
                                    ),
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
           ],
          ),
         ),
        ),
      ),
    );
  }
}
