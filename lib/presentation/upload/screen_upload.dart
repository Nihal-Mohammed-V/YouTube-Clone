import 'package:flutter/material.dart';
import 'package:youtube_clone/presentation/home/screen_home.dart';

class ScreenUpload extends StatelessWidget {
  const ScreenUpload({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScreenHome()),
                );
              },
              child: Icon(Icons.close, color: Colors.white, size: 30),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.45,
            ),
            child: Column(
              children: [
                Icon(
                  Icons.image,
                  color: Colors.white,
                  size: MediaQuery.of(context).size.width * 0.17,
                ),
                SizedBox(height: 20),
                Text(
                  'Let YouTube access your photos and videos',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(height: 20),
                Text(
                  'Change your permissions at any time in Settings',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Open settings',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
