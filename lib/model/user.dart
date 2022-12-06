class User {
  final String user;
  final String token;

  User({required this.user, required this.token});

  factory User.fromJason(Map<String, dynamic> json) {
    return User(user: json["user"], token: json["token"]);
  }
}

class postModel {
  int userId;
  int id;
  String title;
  String body;


  postModel({required this.userId ,required this.id ,required this.title ,required this.body,},)
}



