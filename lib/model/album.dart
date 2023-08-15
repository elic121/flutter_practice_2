import 'package:json_annotation/json_annotation.dart';
part 'album.g.dart';

// album 데이터의 구조를 정의하는 클래스
@JsonSerializable()
class Album {
  int userId;
  int id;
  String title;

  Album({required this.userId, required this.id, required this.title});

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);
}
