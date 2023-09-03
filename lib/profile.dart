import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app1/sign_in_screen.dart';

import 'Utils.dart';
String nameFromHome = "";
class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 40),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('asessts/profile.jpg'),
            ),
            const SizedBox(height: 20),
            itemProfile('Name', '$nameFromHome', CupertinoIcons.person),
            const SizedBox(height: 10),
            itemProfile('Phone', '03107085816', CupertinoIcons.phone),
            const SizedBox(height: 10),
            itemProfile(
                'Address', 'abc address, xyz city', CupertinoIcons.location),
            const SizedBox(height: 10),
            itemProfile(
                'Email', 'ahadhashmideveloper@gmail.com', CupertinoIcons.mail),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){
                FirebaseAuth.instance.signOut().then((value){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>signInScreen()));
                }).onError((error, stackTrace) {
                  Utils().toastMessage.toString();
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 5),
                          color: Colors.deepOrange.withOpacity(.2),
                          spreadRadius: 2,
                          blurRadius: 10)
                    ]),
                child: ListTile(
                  title: Text("Log out"),
                  // subtitle: Text(subtitle),
                  leading: Icon(Icons.logout),
                  trailing:
                      Icon(Icons.arrow_forward, color: Colors.grey.shade400),
                  tileColor: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                  ),
                  child: const Text('Edit Profile')),
            )
          ],
        ),
      ),
    );
  }
}

itemProfile(String title, String subtitle, IconData iconData) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 5),
              color: Colors.deepOrange.withOpacity(.2),
              spreadRadius: 2,
              blurRadius: 10)
        ]),
    child: ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      leading: Icon(iconData),
      trailing: Icon(Icons.arrow_forward, color: Colors.grey.shade400),
      tileColor: Colors.white,
    ),
  );
}
