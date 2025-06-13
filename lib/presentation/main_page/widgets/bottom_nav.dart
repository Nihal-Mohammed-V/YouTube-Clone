import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class YBottomNavigation extends StatelessWidget {
  const YBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int newIndex, _) {
        return BottomNavigationBar(
          currentIndex: newIndex,
          onTap: (index) {
            indexChangeNotifier.value = index;
          },
          iconSize: 30,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.slideshow_outlined),
              label: 'Shorts',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.add_circle), label: ''),
            BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions_outlined),
              label: 'Subscription',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'You',
            ),
          ],
        );
      },
    );
  }
}
