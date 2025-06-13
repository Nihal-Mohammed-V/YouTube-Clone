import 'package:flutter/material.dart';

class ScreenUpload extends StatelessWidget {
  const ScreenUpload({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Icon(Icons.close, color: Colors.white),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.4,
            ),
            child: Column(
              children: [
                Icon(
                  Icons.image,
                  color: Colors.white,
                  size: MediaQuery.of(context).size.width * 0.08,
                ),
                Text(
                  'Let YouTube access your photos and videos',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Change your permissions at any time in Settings',
                  style: TextStyle(color: Colors.white),
                ),
                ElevatedButton(onPressed: () {}, child: Text('Open settings')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
