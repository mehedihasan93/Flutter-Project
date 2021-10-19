import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled/home_page.dart';

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

      extendBodyBehindAppBar: true,
      body: Center(
        child: Text(
            "Follower Page"
        ),
      ),
    );
  }
}
