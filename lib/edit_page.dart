import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled/home_page.dart';

class EditPage extends StatefulWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color.fromRGBO(150, 144, 145, 3),
        title: Text(
          "Edit Page",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.italic,
            color: Color.fromRGBO(106, 87, 125, 1),
        ),
          textAlign: TextAlign.justify,
        ),
        centerTitle: true,
        leading: FlatButton.icon(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new_outlined,
         size: 15,
        ),
         label: Text("Back",
    style: TextStyle(
    fontSize: 15,
    ),
    ),

                  ),
    leadingWidth: 100,
    actions: [
      FlatButton.icon(onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context)=>HomePage(),
        ),
        );
      },
    icon: Icon(
      Icons.save_outlined,
    size: 15,
    ),

    label: Text(
        "Save",
      style: TextStyle(
        fontSize: 15,

      ),
    ),
    ),
    ],
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: Color.fromRGBO(198, 192, 209, 1),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: MediaQuery.of(context).size.width,
          width: MediaQuery.of(context).size.width,
        ),
      ),

    );
  }
}
