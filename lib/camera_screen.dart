import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera App'),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              // openCamera();
            },
            child: Icon(Icons.camera_alt),
          ),
          FloatingActionButton(
            onPressed: () {
              // openGallary();
            },
            child: Icon(Icons.image),
          ),
        ],
      ),
    );
  }

  // void openCamera() async {
  //   await ImagePicker().pickImage(source: ImageSource.camera);
  // }

  // void openGallary() async {
  //   await ImagePicker().pickImage(source: ImageSource.gallery);
  // }
}
