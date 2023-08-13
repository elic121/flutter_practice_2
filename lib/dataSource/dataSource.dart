import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/album.dart';

class DataSource {
  Future<List<Album>> getAlbums() async {
    const String url = 'https://jsonplaceholder.typicode.com/albums';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      Iterable l = json.decode(response.body);
      return l.map<Album>((item) => Album.fromJson(item))
          .toList();
    } else {
      throw Exception('Failed to load album');
    }
  }
}
