import 'package:flutter/material.dart';

class MapView extends StatefulWidget {
  const MapView({super.key});

  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/mapp.jpg', // Replace with your image path
          fit: BoxFit.cover, // This makes the image fill the screen
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}

/*
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'local_map.dart';
import 'payment_page.dart';
import 'review_page.dart';

class CustomerView extends StatefulWidget {
  const CustomerView({super.key});

  @override
  State<CustomerView> createState() => _CustomerViewState();
}

class _CustomerViewState extends State<CustomerView> {
  final ImagePicker _picker = ImagePicker();
  int _selectedIndex = 0;

  Future<void> _openCamera() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      // Handle the captured image here
      print("Image captured: ${image.path}");
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _showProfileCard(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                radius: 40,
                backgroundImage:
                    AssetImage('assets/dala.jpeg'), // Replace with your image
              ),
              SizedBox(height: 16),
              Text(
                'Adhitya Arunachalam',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              _buildProfileDetail(
                  label: 'Phone Number', value: '+91 9585454606'),
              _buildProfileDetail(label: 'Pincode', value: '638 057'),
              _buildProfileDetail(
                  label: 'Address', value: '237 Main Street, Apt 4B, Chennai'),
              _buildProfileDetail(
                  label: 'Email', value: 'adhiarun2004@gmail.com'),
              SizedBox(height: 16),
              Text(
                'Area',
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
              SizedBox(height: 8),
              DropdownButtonFormField<String>(
                value: '-',
                items: ['-', 'City Central', 'Market Street', 'Str Nagar']
                    .map((String role) {
                  return DropdownMenuItem<String>(
                    value: role,
                    child: Text(role),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  // Handle change
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                ),
              ),
              SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Edit Profile action
                      },
                      icon: Icon(Icons.edit), // Edit icon
                      label: Text('Edit profile'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Button color
                        foregroundColor: Colors.white, // Text color
                        minimumSize: Size(double.infinity, 50), // Full width
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Sign Out action
                      },
                      icon: Icon(Icons.exit_to_app), // Sign out icon
                      label: Text('Sign Out'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Button color
                        foregroundColor: Colors.white, // Text color
                        minimumSize: Size(double.infinity, 50), // Full width
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildProfileDetail({required String label, required String value}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        '$label: $value',
        style: TextStyle(fontSize: 16),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flow"),
        leading: IconButton(
          icon: CircleAvatar(
            backgroundImage:
                AssetImage('assets/dala.jpeg'), // Replace with your image
          ),
          onPressed: () {
            _showProfileCard(context);
          },
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: <Widget>[
          Center(
            child: Column(
              children: [
                Text('Welcome to SIH Water App',
                    style: TextStyle(fontSize: 18, color: Colors.blue)),
                Text('All the updates will be displayed here ',
                    style: TextStyle(fontSize: 18, color: Colors.blue)),
                Text('Updates are about Date Time of water flow',
                    style: TextStyle(fontSize: 18, color: Colors.blue)),
                Text('', style: TextStyle(fontSize: 18, color: Colors.blue))
              ],
            ),
          ),
          PaymentPage(),
          ReviewsPage(),
          //ProfilePage(),
          MapView(),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.grey[200], // Background color of the nav bar container
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          backgroundColor:
              Colors.white, // Overall background color of the nav bar
          selectedItemColor: Colors.blue, // Color for the selected item
          unselectedItemColor: Colors.grey, // Color for unselected items
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Info',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.payment),
              label: 'Payment',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.rate_review),
              label: 'Reviews',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              label: 'Map',
            ),
          ],
        ),
      ),
    );
  }
}

*/