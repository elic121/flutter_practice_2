import '../dataSource/DataSource.dart';
import '../model/album.dart';

// album 데이터를 가져오는 repository
class AlbumRepository {
  final DataSource _dataSource = DataSource();

  Future<List<Album>> getAlbums() {
    return _dataSource.getAlbums();
  }
}
