import 'package:flutter/material.dart';
import '../model/album.dart';
import '../repository/albumRepository.dart';

// album 데이터를 가져오는 뷰모델
class AlbumViewModel with ChangeNotifier {
  late final AlbumRepository _albumRepository;
  List<Album> _albums = [];
  List<Album> get albums => _albums;

  AlbumViewModel() {
    _albumRepository = AlbumRepository();
    _getAlbums();
  }

  Future<void> _getAlbums() async {
    _albums = await _albumRepository.getAlbums();
    notifyListeners();
  }
}
