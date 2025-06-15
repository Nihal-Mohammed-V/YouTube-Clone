import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  final List<String> history = [
    "Flutter tutorial",
    "YouTube UI clone",
    "Best smartphones 2025",
    "Dart vs JavaScript",
    "Funny cat videos",
  ];
  SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back, color: Colors.white),
                  ),
                  const SizedBox(width: 10),

                  Expanded(
                    child: SizedBox(
                      height: 35,
                      child: TextField(
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Search YouTube',
                          hintStyle: const TextStyle(color: Colors.white54),
                          filled: true,
                          fillColor: Colors.grey[850],
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 16,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        onChanged: (value) => print(value),
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  const Icon(Icons.mic, color: Colors.white),
                ],
              ),
              const SizedBox(height: 8),
              Expanded(
                child: ListView.builder(
                  itemCount: history.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 4),
                      leading: const Icon(Icons.history, color: Colors.white70),
                      title: Text(
                        history[index],
                        style: const TextStyle(color: Colors.white),
                      ),
                      trailing: SizedBox(
                        width: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/images/youtube.png',
                                width: 60,
                                height: 35,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 4),
                            const Icon(
                              Icons.north_west,
                              size: 16,
                              color: Colors.white30,
                            ),
                          ],
                        ),
                      ),
                      onTap: () {},
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
