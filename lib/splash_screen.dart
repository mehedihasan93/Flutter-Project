import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled/home_page.dart';
import 'package:untitled/timeline.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: MediaQuery.of(context).size.height/3,
                width: MediaQuery.of(context).size.width/3,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Color.fromRGBO(41, 8, 102, 1),
                    width: 4,
                    style: BorderStyle.solid,
                  ),
                  image: DecorationImage(
                    image: AssetImage("images/Cover_Image.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            Container(
              height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.width/1.5,
              child: Text(
                "Welcome To Flutter Advance Project. It's an ICTD Project. Let's enter in it.",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Colors.grey.shade800,
                    decoration: TextDecoration.underline,
                    fontStyle: FontStyle.italic,
            ),

            ),
            ),
              Container(
               height: MediaQuery.of(context).size.height/10,
               width: MediaQuery.of(context).size.width/3.5,

               decoration: BoxDecoration(
               border: Border.all(
                color: Colors.black,
                width: 3,
                style: BorderStyle.solid,
               ),
               borderRadius: BorderRadius.circular(15),
               ),
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(horizontal: 20 ),
                  shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(15),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,MaterialPageRoute(builder: (context)=> TimelinePage(),
                    ),
                    );
                  },

                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   Text(
                     'Enter',
                     style: TextStyle(
                         fontSize: 20,
                         fontWeight: FontWeight.w700,
                       color: Colors.black,
                     ),
                   ),
                   Icon(
                     Icons.arrow_forward_ios,
                     size: 20,
                     color: Colors.black,
                   ),
                  ],
                 ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
