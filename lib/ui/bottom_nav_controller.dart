import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavController extends StatefulWidget {
  @override
  _BottomNavControllerState createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  final _pages = [];
  var _currentIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "E-Commerce",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 5,
          selectedItemColor: Colors.amber,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex.value,
          selectedLabelStyle:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline), label: 'Favourite'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_shopping_cart), label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
          ],
          onTap: (index) {
            _currentIndex.value = index;
          },
        ),
        body: _pages[_currentIndex.value],
      ),
    );
  }
}
