import 'package:flutter/material.dart';
import 'package:manager_videos/domain/entities/video_post.dart';
import 'package:manager_videos/presentation/widgets/shared/video_buttons.dart';
import 'package:manager_videos/presentation/widgets/video/fullscreen_player.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollableView({super.key
  , required this.videos});

  @override       
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
      final VideoPost videoPosts = videos[index];

        return Stack(
          children: [
            //VideoPlayer
            SizedBox.expand(
              child: FullScreenPlayer(
                caption: videoPosts.caption,
                videoUrl: videoPosts.videoUrl,
              ),
            ),
            //bottons
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(video: videoPosts),
            )

          ],
        );
      },
        
    );
      }

      // children: [
      //   Container(color: Colors.red,),
      //   Container(color: Colors.blue,),
      //   Container(color: Colors.teal,),
      //   Container(color: Colors.yellow,),
      //   Container(color: Colors.pink,),
      //   Container(color: Colors.deepPurple,),
      // ],
  
  }
