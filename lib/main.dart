import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sihwaterapp/firebase_options.dart';
import '/pages/commoners/customer_view.dart';
import '/pages/operators/pumpoperator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Getting the screen size using MediaQuery
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 88, 183, 255),
        title: Text("Flow"),
      ),
      body: Stack(
        children: [
          // Fullscreen image background
          Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://e0.pxfuel.com/wallpapers/163/630/desktop-wallpaper-cool-water-background-for-phones-water-underwater-and-samsung-water-best-water.jpg', // Replace with your image URL
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Overlaying buttons on top of the image
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CustomerView()),
                    );
                  },
                  child: Text('Go to Customer View'),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OperatorHomePage()),
                    );
                  },
                  child: Text('Go to Operator View'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
