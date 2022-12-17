
import 'dart:convert';

SamplePosts samplePostsFromJson(String str) => SamplePosts.fromJson(json.decode(str));

String samplePostsToJson(SamplePosts data) => json.encode(data.toJson());

class SamplePosts {
  SamplePosts({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  int userId;
  int id;
  String title;
  String body;

  factory SamplePosts.fromJson(Map<String, dynamic> json) => SamplePosts(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}
