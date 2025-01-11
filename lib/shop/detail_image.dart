import 'package:flutter/material.dart';

class DetailImageScreen extends StatefulWidget {
  DetailImageScreen({super.key, required this.image});
  String image;
  @override
  State<DetailImageScreen> createState() => _DetailImageScreenState();
}

class _DetailImageScreenState extends State<DetailImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Image'),
      ),
      body: Image(image: NetworkImage(widget.image)),
    );
  }
}
