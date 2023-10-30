import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      theme: ThemeData(primaryColor: Colors.blue),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("City Tour"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 16.0),
              GalleryImages(),
              SizedBox(height: 16.0),
              Text(
                "Explore, Enjoy, Experience",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                "Explore the charm of our city's hidden gems and embark on a journey to discover the rich cultural heritage, breathtaking landscapes, and unique experiences that await you. From historic landmarks to vibrant markets and serene natural wonders, our city offers a tapestry of experiences that will captivate your senses. Join us in exploring the beauty of our city and create memories that will last a lifetime. Come and visit our city's treasures today.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16.0),
              Image.network(
                "https://picsum.photos/id/162/200/300",
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16.0),
              Text(
                "Blue body of water",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GalleryImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Image.network(
            "https://picsum.photos/id/142/300/200",
            width: 150,
            height: 300,
            fit: BoxFit.cover,
          ),
          Image.network(
            "https://picsum.photos/id/152/300/200",
            width: 150,
            height: 300,
            fit: BoxFit.cover,
          ),
          Image.network(
            "https://picsum.photos/id/162/300/200",
            width: 150,
            height: 300,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
