//Clase que representa el Upload de un video, el cual cuenta con sus características
//- caption
//- videoUrl
//Y sus estadísticas:
//- likes
//-views
class VideoPost{
  final String caption;
  final String videoUrl;
  final int likes;
  final int views;

  VideoPost({
    required this.caption,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0
  });
}