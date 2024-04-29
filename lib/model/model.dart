class Userdata {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  Userdata({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  Userdata.fromjson(Map<String, dynamic> json) {
    userId = json["userId"];
    id = json["id"];
    title = json["title"];
    completed = json["completed"];
  }
}
