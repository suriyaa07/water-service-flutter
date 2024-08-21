import 'package:flutter/material.dart';
import '../services/firestore.dart';
// Import the FirestoreService

class PostInfo extends StatefulWidget {
  @override
  _PostInfoState createState() => _PostInfoState();
}

class _PostInfoState extends State<PostInfo> {
  final TextEditingController _textController = TextEditingController();
  final FirestoreService _firestoreService = FirestoreService();

  void _savePost() async {
    String text = _textController.text.trim();
    if (text.isNotEmpty) {
      await _firestoreService.addPost(text);
      _textController.clear();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Post added successfully!')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter some text.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            controller: _textController,
            decoration: InputDecoration(
              labelText: 'Enter your post',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: _savePost,
            child: Text('Save Post'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple[900], // Button color
              foregroundColor: Colors.white, // Text color
            ),
          ),
        ],
      ),
    );
  }
}
