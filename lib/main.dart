import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:restaurant_app1/sign_in_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:restaurant_app1/single_item_nav_bar.dart';
import 'package:restaurant_app1/Burger/single_item_page.dart';
import 'firstpage.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  void initState(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // home: const signInScreen(),

      routes: {
        "/":(context) => signInScreen(),
        // "SingleItemPage" : (context) => singleItemPage()
      },

    );
  }
}
