
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword
    (email: _emailController.text.trim(), password:
     _passwordController.text.trim());
  }

  void openSignupScreen() {
    Navigator.of(context).pushReplacementNamed('signupScreen');
  }


  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image
                Image.asset("images/png-transparent-animal-koala-pull-away-koala-koala-bear-png-picture.png",
                height: 200,
                ),
                SizedBox(height: 20),
                // Title
                Text("SIGN IN",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                
                // Subtitle
                Text("Welcome back! Nice to see you again :-",
                style: TextStyle(fontSize: 18)
                ),
                SizedBox(height: 50,
                ),
                // Email TextField
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                // Passwor Textfiled
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                // sign in button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: GestureDetector(
                    onTap: signIn,
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.amber[900],
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: Center(child: Text('Sign in',
                      style: TextStyle(
                        color: Colors.white,
                         fontWeight: FontWeight.bold,fontSize: 18
                      ),
                    )
                                  ),
                                ),
                  ),
            ),
            SizedBox(height: 25),
            
                  
                SizedBox(height: 25),
                // Text: sign up
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not yet amember? ',
                     style:
                     TextStyle( fontWeight: FontWeight.bold)),
                    GestureDetector(
                      onTap: openSignupScreen,
                      child: Text("Sign up Now",
                        style:
                       TextStyle(color: Colors.green,
                        fontWeight: FontWeight.bold)),
                    )],
                )
          
            ]),
          ),
        ),
      ),
    );
  }
}