import 'package:flutter/material.dart';
import 'image.dart';

void main() {
  runApp(MyApp());
}

class Aboutscreen extends StatelessWidget {
  const Aboutscreen({Key key}) : super(key: key );

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}

class MyApp extends StatelessWidget {
  get onPressed => null;

  get icon => null;

  // This widget is the root of your application.
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 29, 116, 32),
            shadowColor: Colors.teal,
            leading: IconButton(  
            icon: const Icon(Icons.menu),
            iconSize: 20,
            onPressed: () { 
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => Aboutscreen(),
                ),
              );// statements 
            },
            ),
            actions: [
              IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
              }
              ),
            //),
            // body: const Center(
            // child: Text('Hello World'),
            ]
            ),
            body: ListView(
            children: [
              Container(
                child: Column(
                  children: [
                    buildFeeds(
                       "Day reappeared. The tempest still raged with undiminished",
                        "Corner beef prosciutto ground...",
                        "10 min",
                        'assets/gambar.jpg'),
                    buildFeeds("The were some signs of a calm at noon.",
                        "Things to enjoy", "1 hr", 
                        'assets/yes.jpg'),
                    buildFeeds(
                        "Fun tropical escapes",
                        "The night was comparatively quite. Some of the sails were again.",
                        "1 hr",
                        'assets/fun.jpg'),
                    buildFeeds(
                        "Pork loin sausage shankle, kielbasa bacon beef ribs",
                        "Drumstick turkey shoulder spare...",
                        "2 hr",
                        'assets/paha.jpg'),
                    buildFeeds(
                        "Cherry blossoms in bloom",
                        "Spring is here and we all know...",
                        "3 hr",
                        'assets/bunga.jpg'),
                  ],
                ),
              )
            ],
          )
      )
    );
  }
  Widget buildFeeds(String tema, String desc, String jam, String gambar) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(bottom: const BorderSide(width: 1, color: Colors.grey))),
      padding: const EdgeInsets.all(10),
      height: 100,
      child: Row(
        children: [
          Container(
            //          decoration: BoxDecoration(border: Border.all(width: 2)),
            padding: const EdgeInsets.only(right: 10),
            width: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tema,
                  style: const TextStyle(fontSize: 12),
                  maxLines: 2,
                ),
                Text(
                  desc,
                  style: const TextStyle(fontSize: 12),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(
                  jam,
                  style: const TextStyle(fontSize: 10, color: Colors.grey),
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
                  height: 160,
                  child: Image.asset(
                    gambar,
                    fit: BoxFit.fill
                  )))
        ],
      ),
    );
  }
}