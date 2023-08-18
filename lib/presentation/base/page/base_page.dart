import 'package:ezv/presentation/chat/page/chat_page.dart';
import 'package:ezv/presentation/favorite/page/favorite_page.dart';
import 'package:ezv/presentation/list/page/list_page.dart';
import 'package:flutter/material.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  int _bottomSelectedIndex = 0;

  void _pageChanged(int index) {
    setState(() {
      _bottomSelectedIndex = index;
    });
  }

  List<BottomNavigationBarItem> _buildBottomNavBarItems() {
    return [
      BottomNavigationBarItem(icon: Container(), label: 'List'),
      BottomNavigationBarItem(icon: Container(), label: 'Favorite'),
      BottomNavigationBarItem(icon: Container(), label: 'Chat')
    ];
  }

  Widget _buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        _pageChanged(index);
      },
      children: const <Widget>[
        ListPage(),
        FavoritePage(),
        ChatPage(),
      ],
    );
  }

  void _bottomTapped(int index) {
    setState(() {
      _bottomSelectedIndex = index;
      pageController.animateToPage(index,
          duration: const Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPageView(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomSelectedIndex,
        onTap: (index) {
          _bottomTapped(index);
        },
        items: _buildBottomNavBarItems(),
      ),
    );
  }
}
