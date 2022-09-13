import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:woman_safty_app/src/features/alert/view/alert_screen.dart';
import 'package:woman_safty_app/src/features/chat/view/chat_screen.dart';
import 'package:woman_safty_app/src/features/home/view/home_page.dart';
import 'package:woman_safty_app/src/features/shopping/view/shopping_screen.dart';
import 'package:woman_safty_app/src/features/tips/view/tips_screen.dart';
import 'package:woman_safty_app/styles/k_color.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  late final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: KColor.appBackground,
      child: Scaffold(
        body: SizedBox.expand(
          child: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            children: const [
              HomeScreen(),
              ShoppingScreen(),
              AlertScreen(),
              ChatScreen(),
              TipsScreen()
            ],
          ),
        ),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentIndex,
          showElevation: true,
          itemCornerRadius: 24,
          iconSize: 30,
          containerHeight: 65,
          curve: Curves.easeIn,
          onItemSelected: (index) {
            setState(() {
              _currentIndex = index;
            });
            _pageController.animateToPage(
              _currentIndex,
              duration: const Duration(microseconds: 10),
              curve: Curves.linear,
            );
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              icon: const Icon(Icons.home),
              title: const Text('Home'),
              activeColor: KColor.icon,
              inactiveColor: KColor.icon.withOpacity(0.7),
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: const Icon(Icons.favorite_outlined),
              title: const Text('Wishlist'),
              activeColor: KColor.icon,
              inactiveColor: KColor.icon.withOpacity(0.7),
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: const Icon(Icons.safety_check),
              title: const Text('Alert'),
              activeColor: Colors.red,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: const Icon(Icons.message),
              title: const Text('Chat'),
              activeColor: KColor.icon,
              inactiveColor: KColor.icon.withOpacity(0.7),
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: const Icon(Icons.tips_and_updates_outlined),
              title: const Text('Tips'),
              activeColor: KColor.icon,
              inactiveColor: KColor.icon.withOpacity(0.7),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
