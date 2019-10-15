import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_instagram/shared/colors.dart';

class StorieScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StorieScreen();
  }
  
}

class _StorieScreen extends State<StorieScreen>{

  CameraController controller;
  List cameras;
  int selectedCameraIndex;
  Future<void> initializeControllerFuture;

  @override
  void initState(){
    super.initState();

    availableCameras().then((availableCameras){
      cameras = availableCameras;

      selectedCameraIndex = 0;

      controller = CameraController(
        cameras[0],
        ResolutionPreset.veryHigh
      );

      initializeControllerFuture = controller.initialize();
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: FutureBuilder<void>(
        future: initializeControllerFuture,
        builder: (BuildContext context, AsyncSnapshot snapshot){
          if(snapshot.connectionState == ConnectionState.done){
            return CameraPreview(controller);
          } else {
            return Center(child: CircularProgressIndicator(),);
          }
        },
      ),
    );
  }

}