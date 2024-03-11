import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fzaker',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    Text('القبلة'),
    Text('القران'),
    Text('اوقات الصلاة'),
    Text('الرئيسية'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fzaker'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          border: Border.all(color: Colors.grey.shade400), // Border color
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.compass_calibration),
                label: 'القبلة',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'القران',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'اوقات الصلاة',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'الرئيسية',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.green, // Selected icon color
            unselectedItemColor: Colors.grey, // Unselected icon color
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
