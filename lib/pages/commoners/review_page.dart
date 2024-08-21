import 'package:flutter/material.dart';

/// REVIEW PAGE
class ReviewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Report Page',
            style: TextStyle(fontSize: 24, color: Colors.blue),
          ),
          SizedBox(height: 24),
          // Big text field for review
          TextField(
            maxLines: 8, // Adjust height as needed
            decoration: InputDecoration(
              hintText: 'Write your review/report here...',
              border: OutlineInputBorder(),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              suffixIcon: IconButton(
                icon: Icon(Icons.attach_file), // Attachment icon
                onPressed: () {
                  // Implement attachment logic here
                  print("Attachment icon pressed");
                },
              ),
            ),
          ),
          SizedBox(height: 16),
          // Submit button
          ElevatedButton(
            onPressed: () {
              // Implement submission logic here
              print("Submit button pressed");
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, // Button color
              foregroundColor: Colors.white, // Text color
              minimumSize: Size(double.infinity, 50), // Full width
            ),
            child: Text('Submit'),
          ),
          Spacer(), // This will push the button to the bottom
          SizedBox(height: 16),
          // Contact Operator button
          Center(
            child: ElevatedButton(
              onPressed: () {
                _showOperatorProfile(context); // Show profile card
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Button color
                foregroundColor: Colors.white, // Text color
                minimumSize: Size(200, 40), // Smaller size, not full width
              ),
              child: Text('Contact Operator'),
            ),
          ),
        ],
      ),
    );
  }

  void _showOperatorProfile(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage:
                    AssetImage('assets/mendal.jpeg'), // Example image
              ),
              SizedBox(height: 16),
              Text(
                'Operator Name',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Contact: +91 1234567890',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                'Email: operator@example.com',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Close the bottom sheet
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Button color
                  foregroundColor: Colors.white, // Text color
                  minimumSize: Size(double.infinity, 50), // Full width
                ),
                child: Text('Close'),
              ),
            ],
          ),
        );
      },
    );
  }
}
