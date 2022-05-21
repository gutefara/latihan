import 'package:flutter/material.dart';

class imagePage extends StatefulWidget {
  imagePage({Key key}) : super(key: key );

  @override
  _imagePageState createState() => _imagePageState();
}

class _imagePageState extends State<imagePage> {
  @override
  // ignore: dead_code
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feed Reader'),
        actions: [
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
        ),
        body: Image.asset('assets/images/bunga.jpg'),
      );
  }
}