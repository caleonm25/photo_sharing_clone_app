import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:photo_sharing_clone_app/home_screen/home_screen.dart';
import 'package:photo_sharing_clone_app/log_in/login_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  final Future<FirebaseApp> _initalization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initalization,
      builder: (context, snapshot){
        if(snapshot.connectionState == ConnectionState.waiting){
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: Center(
                child: Center(
                  child: Text(
                    "Welcome to Photo sharing"
                  ),
                ),
              ),
            ),
          );
        }
        else if (snapshot.hasError){
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: Center(
                child: Center(
                  child: Text(
                      "An error ocurred, please wait ...."
                  ),
                ),
              ),
            ),
          );
        }
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Photo sharing App",
          home: FirebaseAuth.instance.currentUser == null ? LoginScreen() : HomeScreen(),
        );
      }

    );
  }
}


