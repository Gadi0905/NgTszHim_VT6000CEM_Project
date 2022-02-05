import 'package:flutter/material.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/widgets_helper/appbar_widget/default_appbar_widget.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/widgets_helper/background_widget/default_background_widget.dart';

class IndexScreen extends StatefulWidget {
  const IndexScreen({Key? key}) : super(key: key);

  @override
  State<IndexScreen> createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Index 0: Home', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
    Text('Index 1: Account', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBarWidget.basicColor(),
      body: _buildBody(context),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBody(BuildContext context) {
    return DefaultBackgroundWidget.basicColor(
      context: context,
      child: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_box), label: 'Account'),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    );
  }
}
