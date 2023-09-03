import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app1/sign_up_screen.dart';

import 'Utils.dart';
import 'firstpage.dart';
import 'package:restaurant_app1/profile.dart';

class signInScreen extends StatefulWidget {
  const signInScreen({Key? key}) : super(key: key);

  @override
  State<signInScreen> createState() => _signInScreenState();
}

class _signInScreenState extends State<signInScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _emailTextController = TextEditingController();
    TextEditingController _passwordTextController = TextEditingController();
    bool isPasswordType = true;

    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Welcome to App",
                style: Theme.of(context).textTheme.headline3,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Enter your Email Address\n to connect your account",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SizedBox(
                height: 60,
              ),
              reusableTextField("Enter Email", Icons.person_outline, false,
                  _emailTextController),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: _passwordTextController,
                onChanged: (val) {
                  // nameFromHome = val;
                },
                obscureText: true,
                enableSuggestions: !isPasswordType,
                autocorrect: !isPasswordType,
                cursorColor: Colors.black,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline, color: Colors.white70),
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
                  filled: true,
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  fillColor: Colors.white.withOpacity(0.3),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          const BorderSide(width: 2, color: Colors.blueAccent)),
                ),
                keyboardType: isPasswordType
                    ? TextInputType.visiblePassword
                    : TextInputType.emailAddress,
              ),
              SizedBox(
                height: 20,
              ),
              signInSignUpButton(context, true, () {
                FirebaseAuth.instance
                    .signInWithEmailAndPassword(
                        email: _emailTextController.text.toString(),
                        password: _passwordTextController.text.toString())
                    .then((value) {
                  Utils().toastMessage("Successfully Logiin");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => firstpage()));
                }).onError((error, stackTrace) {
                  Utils().toastMessage(error.toString());

                  print("Error ${error.toString()}");
                });
              }),
              // SizedBox(width: 20,),
              signUpOption(context)
            ],
          ),
        )),
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('asessts/20.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    ));
  }
}

TextField reusableTextField(String text, IconData icon, bool isPasswordType,
    TextEditingController controller) {
  return TextField(
    controller: controller,
    onChanged: (val) {
      // nameFromHome = val;
    },
    // obscureText: true,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: Colors.black,
    style: TextStyle(color: Colors.black),
    decoration: InputDecoration(
      prefixIcon: Icon(icon, color: Colors.white70),
      labelText: text,
      labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.white.withOpacity(0.3),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(
            width: 2,
          )),
    ),
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}

Container signInSignUpButton(
    BuildContext context, bool isLogin, Function ontap) {
  return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
      child: ElevatedButton(
          onPressed: () {
            ontap();
          },
          child: Text(
            isLogin ? "LOG IN " : "Registered",
            style: const TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.black26;
                }
                return Colors.white;
              }),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))
              ))));
}

Row signUpOption(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(
        "Don't have account?",
        style: TextStyle(color: Colors.white),
      ),
      TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUpScreen()),
            );
          },
          child: Text(
            "SignUp",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ))
    ],
  );
}
