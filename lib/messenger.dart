import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled/home_page.dart';

import 'models/messenger_model.dart';

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

List<MessengerModel> messengerModels = [
  MessengerModel(username: "Abdur Razzak", lastmessage: "Hi!", userImageUrl: "images/Profile_Images/user_1.jpg",),
  MessengerModel(username: "chanchal choudhary", lastmessage: "How are you?", userImageUrl: "images/Profile_Images/user_2.jpg",),
  MessengerModel(username: "Fazlur Rahman Babu", lastmessage: "How do you do?", userImageUrl: "images/Profile_Images/user_3.jpg",),
  MessengerModel(username: "Siam Ahmed", lastmessage: "Let's go for long drive", userImageUrl: "images/Profile_Images/user_4.jpg",),
  MessengerModel(username: "Arfan Nishu", lastmessage: "Valo asen vai?", userImageUrl: "images/Profile_Images/user_5.jpg",),
  MessengerModel(username: "Ziaul Faruq Apurba", lastmessage: "What's up?", userImageUrl: "images/Profile_Images/user_6.jpg",),
  MessengerModel(username: "Ziaul Hoque Polash", lastmessage: "Tumi ki kro?", userImageUrl: "images/Profile_Images/user_7.jpg",),
  MessengerModel(username: "Tasnia Farin", lastmessage: "Hi! there", userImageUrl: "images/Profile_Images/user_8.jpg",),
  MessengerModel(username: "Nusrat Imrose Tisha", lastmessage: "Amar sathe tumi dekha korbe?", userImageUrl: "images/Profile_Images/user_9.jpg",),
  MessengerModel(username: "Joya Ahsan", lastmessage: "Where are you right now?", userImageUrl: "images/Profile_Images/user_10.jpg",),
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
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              height: MediaQuery.of(context).size.height/25,
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

          //friend list view builder SliverToBoxAdapter

          SliverToBoxAdapter(
            child: Container(
              height: MediaQuery.of(context).size.height/10,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                  itemBuilder: (BuildContext context, int index){
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    height: MediaQuery.of(context).size.height/5,
                    width: MediaQuery.of(context).size.width/5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("${images[index]}"),
                        fit: BoxFit.fill,
                      ),
                      border: Border.all(
                        color: Color.fromRGBO(10, 255, 10, 1),
                        width: 3,
                        style: BorderStyle.solid,
                      ),
                    ),
                  );
                  }
              ),
            ),
          ),

          //Message text SliverToBoxAdapter

          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              height: MediaQuery.of(context).size.height/25,
              width: MediaQuery.of(context).size.width,
              child: Text(
                "Messages",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(21, 21, 21, 1),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((BuildContext context,int index){
              return Container(
               height: MediaQuery.of(context).size.height/8,
               width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage("${messengerModels[index].userImageUrl}"
                          ),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height/10,
                            left: MediaQuery.of(context).size.height/11,
                            child: CircleAvatar(
                              radius: 7,
                              backgroundColor: Color.fromRGBO(10, 255, 10, 1),
                            ),
                        ),
                      ],
                    ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width/1.5,


                            child: RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                text: "${messengerModels[index].username}\n",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  height: 1.5,
                                  color: Color.fromRGBO(21,21,21,1),
                                ),
                                children: [
                                  TextSpan(
                                    text: "${messengerModels[index].lastmessage}",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(21, 21, 21, .6),
                                    ),
                                  ),
                                ]
                              ),
                            ),
                          ),
                        ),
                  ],
                ),
              );
            },
            childCount: messengerModels.length,
            ),
          ),
        ],
      ),
    );
  }
}
