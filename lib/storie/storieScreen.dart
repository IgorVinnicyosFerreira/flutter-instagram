import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_instagram/shared/colors.dart';
import 'package:flutter_instagram/shared/screen.dart';
import 'package:flutter_instagram/storie/components/captureWidget.dart';
import 'package:flutter_instagram/storie/components/headerWiget.dart';

class StorieScreen extends StatefulWidget{

  final CameraDescription camera;
  Function goBack;

  StorieScreen({@required this.camera, this.goBack});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StorieScreen();
  }
  
}

class _StorieScreen extends State<StorieScreen>{

  CameraController _controller;
  Future<void> _initializeControllerFuture;
  GlobalKey _captureKey = GlobalKey();

  @override
  void initState(){
    super.initState();

    _controller = CameraController(
      widget.camera,
      ResolutionPreset.veryHigh
    );

    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.done){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: <Widget>[ 
                  CameraPreview(_controller),
                    HeaderWidget(goBack: this.widget.goBack,),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: CaptureWidget(key: _captureKey,),
                    ),
                ],
              ),
            );
          } else {
            return Center(child: CircularProgressIndicator(),);
          }
        },
      ),
    );
  }

  Size _getCaptureSize(){
    RenderBox captureRenderBox = _captureKey.currentContext.findRenderObject();

    return captureRenderBox.size;
  }

}