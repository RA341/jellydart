import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:jellydart/jellydart.dart';

import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';
import 'auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MediaKit.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: VideoTest(),
    );
  }
}

class ImageTest extends StatefulWidget {
  const ImageTest({super.key});

  @override
  State<ImageTest> createState() => _ImageTestState();
}

class _ImageTestState extends State<ImageTest> {
  String? url;
  Map<String, String>? headers;

  @override
  void initState() {
    login().then((value) {
      final client = value.$1;
      final api = GetUrlApi(client: client);
      final url = api.getItemImageUrl(
        '43257459bbf95c10e689c22c4cb5819d',
        ImageType.primary,
        addPlayedIndicator: true
      );
      this.url = url;
      headers = api.headers;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return url == null
        ? const CircularProgressIndicator()
        : CachedNetworkImage(
            imageUrl: url!,
            httpHeaders: headers!,
            errorWidget: (context, url, error) =>
                const Text('Failed to get data'),
          );
  }
}

class VideoTest extends StatefulWidget {
  const VideoTest({super.key});

  @override
  State<VideoTest> createState() => _VideoTestState();
}

class _VideoTestState extends State<VideoTest> {
  late final player = Player();

  // Create a [VideoController] to handle video output from [Player].
  late final controller = VideoController(player);

  @override
  void initState() {
    login().then((value) {
      final client = value.$1;
      final userId = value.$2;

      ItemsApi(client).getResumeItems(userId).then(
        (items) async {
          if (items == null || items.items == null || items.items!.isEmpty) {
            throw Exception('Could not find any resume items');
          }

          final id = items.items!.first.id!;

          // Play a [Media] or [Playlist]
          final urlClient = GetUrlApi(client: client);
          final url = await urlClient.streamVideos(id, userId);
          player.open(Media(url, httpHeaders: urlClient.headers));

          player.stream.track.listen(
            (event) {
              print(event.video);
            },
          );

          player.stream.tracks.listen(
            (event) {
              print(event);
            },
          );
        },
      );
    });
    super.initState();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width * 9.0 / 16.0,
        child: Video(controller: controller),
      ),
    );
  }
}
