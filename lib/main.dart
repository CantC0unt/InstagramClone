import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagramclone/mobileversion.dart';
import 'package:instagramclone/resposive.dart';
import 'package:instagramclone/screens/login.dart';
import 'package:instagramclone/screens/signup.dart';
import 'package:instagramclone/webversion.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCZaNqG2c1lPJkK8sg1Z8Poh12LRaEsOSk",
            authDomain: "instagramclone-c1ad4.firebaseapp.com",
            projectId: "instagramclone-c1ad4",
            storageBucket: "instagramclone-c1ad4.appspot.com",
            messagingSenderId: "395071482429",
            appId: "1:395071482429:web:c153e298171617d9705854"));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData.dark();
    return MaterialApp(
      title: 'Instagram',
      theme: theme.copyWith(scaffoldBackgroundColor: Colors.black),
      home: LoginPage(),
    );
  }
}
