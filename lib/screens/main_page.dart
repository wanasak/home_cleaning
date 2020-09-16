import 'package:flutter/material.dart';
import 'package:home_cleaning/screens/home_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _currentIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mr.Clean'),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.book), title: Text('Bookings')),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), title: Text('Account')),
          BottomNavigationBarItem(icon: Icon(Icons.more), title: Text('More')),
        ],
      ),
      body: getBodyWidget(),
    );
  }

  getBodyWidget() {
    return (_currentIndex == 0) ? HomePage() : Container();
  }
}
