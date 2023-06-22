// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';


class PostDataUiModel {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostDataUiModel(this.userId, this.id, this.title, this.body);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userId': userId,
      'id': id,
      'title': title,
      'body': body,
    };
  }

  factory PostDataUiModel.fromMap(Map<String, dynamic> map) {
    return PostDataUiModel(
      map['userId'] as int,
      map['id'] as int,
      map['title'] as String,
      map['body'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PostDataUiModel.fromJson(String source) => PostDataUiModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
