class Timelinemodel{

  Timelinemodel({
  required this.username,
  required this.profileImageURL,
  required this.address,
  required this.caption,
  required this.postImageURL,
  required this.likes,
}
);

  String username = '' ;
  String profileImageURL = '';
  String caption = '';
  String postImageURL = '';
  String address = '';
  int likes = 0;
}