import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

late List<CameraDescription> _cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  _cameras = await availableCameras();
  runApp(const CameraApp());
}

/// CameraApp is the Main Application.
class CameraApp extends StatefulWidget {
  /// Default Constructor
  const CameraApp({Key? key}) : super(key: key);

  @override
  State<CameraApp> createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  late CameraController controller;

  @override
  void initState() {
    super.initState();
    controller = CameraController(
      // カメラを指定
      _cameras[0],
      // 解像度を指定
      ResolutionPreset.max,
    );
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            print('User denied camera access.');
            break;
          default:
            print('Handle other errors.');
            break;
        }
      }
    });
  }

  @override
  void dispose() {
    // Widgetが削除されたら、コントローラを破棄
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String imagePath = '';
    if (!controller.value.isInitialized) {
      return Container(
        child: const Text('あーあ。\nアクセス拒否するから～。。。\n使えないじゃーん。'),
      );
    }
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Camera App'),
        ),
        body: const SingleChildScrollView(
            // child:
            // Row(
            //   children: [
            //     CameraPreview(controller),
            //     Text('image path:$imagePath'),
            //   ],
            // ),
            // floatingActionButton: FloatingActionButton(
            //   onPressed: () async {
            //     final image = await controller.takePicture();
            //     setState(() {
            //       imagePath = image.path;
            //     });
            //   },
            //   child: const Icon(Icons.camera),
            // ),
            ),
      ),
    );
  }
}
