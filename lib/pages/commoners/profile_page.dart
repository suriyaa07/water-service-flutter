import 'package:flutter/material.dart';

/// PROFILE PAGE
class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // List of options for the dropdown
  final List<String> _roles = [
    '-',
    'City Central',
    'Market Street',
    'Str Nagar'
  ];
  String _selectedRole = '-'; // Default selected value

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Profile Page',
            style: TextStyle(fontSize: 24, color: Colors.blue),
          ),
          SizedBox(height: 10),
          _buildTextField(label: 'Name', value: 'Adhitya Arunachalam'),
          _buildTextField(label: 'Phone Number', value: '+91 9585454606'),
          _buildTextField(label: 'Pincode', value: '638 057'),
          _buildTextField(
              label: 'Address', value: '237 Main Street, Apt 4B , Chennai'),
          _buildTextField(label: 'Email', value: 'adhiarun2004@gmail.com'),
          //SizedBox(height: 16),
          Text(
            'Area',
            style: TextStyle(fontSize: 16, color: Colors.grey[700]),
          ),
          SizedBox(height: 8),
          DropdownButtonFormField<String>(
            value: _selectedRole,
            items: _roles.map((String role) {
              return DropdownMenuItem<String>(
                value: role,
                child: Text(role),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                _selectedRole = newValue!;
              });
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
  }

  Widget _buildTextField({required String label, required String value}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
          contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
        ),
        controller: TextEditingController(text: value),
        readOnly: true, // Make the field read-only
      ),
    );
  }
}
