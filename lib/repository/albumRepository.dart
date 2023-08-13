import '../dataSource/DataSource.dart';
import '../model/album.dart';

class AlbumRepository{
  final DataSource _dataSource = DataSource();

  Future<List<Album>> getAlbums() {
    return _dataSource.getAlbums();
  }
}