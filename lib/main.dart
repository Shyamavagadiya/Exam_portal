import 'package:canvas_2/login_page.dart'; // Import the login page
import 'package:firebase_core/firebase_core.dart'; // Firebase initialization
import 'package:flutter/material.dart'; // Material Design library
import 'firebase_options.dart'; // Firebase options configuration

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // This line will wait until Firebase is initialized
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage(), // After login, navigate to the LoginPage
      debugShowCheckedModeBanner: false, // Remove the debug banner
    );
  }
}
