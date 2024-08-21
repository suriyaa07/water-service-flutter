import 'package:flutter/material.dart';

import 'post.dart';
import 'activity_log.dart';
import 'inventory.dart';
import 'notifications.dart';

class OperatorHomePage extends StatefulWidget {
  @override
  _OperatorHomePageState createState() => _OperatorHomePageState();
}

class _OperatorHomePageState extends State<OperatorHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = <Widget>[
    NotificationsPage(),
    PostInfo(),
    ActivityLogPage(),
    InventoryPage(),
  ];

  void _showProfileCard(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(
                        'assets/mendal.jpeg'), // Replace with the operator's image
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Palanisamy C P',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text('Phone: +91 9585454606'),
                      Text('Email: palanisamy01cp@gmail.com'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),
              ListTile(
                leading: Icon(Icons.edit),
                title: Text('Edit'),
                onTap: () {
                  // Navigate to settings page or handle settings action
                  Navigator.pop(context); // Close the modal
                },
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text('Help & Support'),
                onTap: () {
                  // Handle help & support action
                  Navigator.pop(context); // Close the modal
                },
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Logout'),
                onTap: () {
                  // Handle logout action
                  Navigator.pop(context); // Close the modal
                  // Perform actual logout operation here
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Operator Dashboard'),
        backgroundColor: Colors.purple[900],
        leading: IconButton(
          icon: CircleAvatar(
            backgroundImage: AssetImage(
                'assets/mendal.jpeg'), // Replace with operator's image
          ),
          onPressed: () {
            _showProfileCard(context);
          },
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.post_add),
            label: 'Post',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Activity Log',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inventory),
            label: 'Inventory',
          ),
        ],
        selectedItemColor: Colors.purple[900], // Active tab color
        unselectedItemColor: Colors.grey, // Inactive tab color
        backgroundColor: Colors.purple[100], // Background color for the navbar
      ),
    );
  }
}
