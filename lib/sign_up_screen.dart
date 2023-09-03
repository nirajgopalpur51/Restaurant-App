import 'package:flutter/material.dart';
import 'package:restaurant_app1/firstpage.dart';
import 'package:restaurant_app1/profile.dart';
import 'package:restaurant_app1/sign_in_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'Utils.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _usernameTextController = TextEditingController();
  // String nameFromHome="";
  bool isPasswordType=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
              size: 32,
            ),
          ),

          SizedBox(
            height: 200,
          ),
          TextField(
            controller: _usernameTextController,
            onChanged: (val){
              nameFromHome = val;
            },
            // obscureText: true,
            enableSuggestions: !isPasswordType,
            autocorrect: !isPasswordType,
            cursorColor: Colors.white,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person, color: Colors.white70),
              labelText: "Enter Name",
              labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
              filled: true,
              floatingLabelBehavior: FloatingLabelBehavior.never,
              fillColor: Colors.white.withOpacity(0.3),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: const BorderSide(width: 2,)),
            ),
            keyboardType: isPasswordType
                ? TextInputType.visiblePassword
                : TextInputType.emailAddress,
          ),
          SizedBox(
            height: 20,
          ),
          reusableTextField("Enter Email", Icons.email, false,
              _emailTextController),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: _passwordTextController,
            onChanged: (val){
              // nameFromHome = val;
            },
            obscureText: true,
            enableSuggestions: !isPasswordType,
            autocorrect: !isPasswordType,
            cursorColor: Colors.white,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock_outline, color: Colors.white70),
              labelText: "Enter Password",
              labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
              filled: true,
              floatingLabelBehavior: FloatingLabelBehavior.never,
              fillColor: Colors.white.withOpacity(0.3),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: const BorderSide(width: 2)),
            ),
            keyboardType: isPasswordType
                ? TextInputType.visiblePassword
                : TextInputType.emailAddress,
          ),

          // reusableTextField("Enter Password", Icons.lock_outline, false,
          //     _passwordTextController),
          SizedBox(
            height: 20,
          ),
          signInSignUpButton(context, false, () {
            FirebaseAuth.instance
                .createUserWithEmailAndPassword(
                    email: _emailTextController.text.toString(),
                    password: _passwordTextController.text.toString())
                .then((value) {
              Utils().toastMessage("Successfully Registered");
              print("Created new Account");
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => signInScreen()));
            }).onError((error, stackTrace) {
              Utils().toastMessage(error.toString());
              print("error ${error.toString()}");
            });
          }),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Already have an account?",
                style: TextStyle(color: Colors.white,fontSize: 15),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => signInScreen()),
                    );
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 15),
                  ))
            ],
          ),
          SizedBox(
            width: 20,
          ),
          // signUpOption()
        ],
          ),
        ),
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
