import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:news_feed/features/user_auth/presentation/pages/login_page.dart';
import 'package:news_feed/features/user_auth/presentation/pages/sign_up_page.dart';
import 'package:news_feed/Pages/main_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "REPLACE_API_KEY",
        appId: "REPLACE_APP_ID",
        messagingSenderId: "REPLACE_SENDER_ID",
        projectId: "REPLACE_PROJECT_ID",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase',
      initialRoute: '/signUp', // Set initial route to '/signUp'
      routes: {
        '/login': (context) => LoginPage(),
        '/signUp': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
      },
    );
  }
}