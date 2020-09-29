import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    
    return BottomNavigationBar(
      elevation: 5,
      currentIndex: _selectedIndex,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      selectedItemColor: Colors.blue,
      onTap: (int index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shop),
          title: Text('Brand')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          title: Text('Cart')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('Person')
        ),
      ],
      
    );
  }
} 