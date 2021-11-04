import 'package:flutter/cupertino.dart';

class MessengerModel {

  MessengerModel({
     required this.username,
    required this.lastmessage,
    required this.userImageUrl,
});

  String username;
  String lastmessage;
  String userImageUrl;
}