import 'package:flutter/material.dart';

class YCustomChip extends StatelessWidget {
  YCustomChip({super.key});
  final List<String> categories = [
    'All',
    'Music',
    'Live',
    'Gaming',
    'News',
    'Movies',
    'Podcasts',
    'Mixes',
    'Programming',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(vertical: 8),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children:
              categories.map((category) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: Chip(
                    label: Text(category),
                    backgroundColor: Colors.grey[850],
                    labelStyle: TextStyle(color: Colors.white),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(color: Colors.transparent),
                    ),
                  ),
                );
              }).toList(),
        ),
      ),
    );
  }
}
