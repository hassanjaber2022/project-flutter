import 'package:firebase/screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final __confirmPasswordController = TextEditingController();

  Future signUp() async{
    if (passwordConfirmed()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword
    (email: _emailController.text.trim(), password:
     _passwordController.text.trim()
     );
      Navigator.of(context).pushNamed('/');
    }
  }

  bool passwordConfirmed(){
    if (_passwordController.text.trim() == 
    __confirmPasswordController.text.trim()) {
      return true;
    } else {
      return false;
    }
  }


  void openSignupScreen() {
    Navigator.of(context).pushReplacementNamed('signupScreen');
  }


  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    __confirmPasswordController.dispose();
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
                Text("SIGN UP",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                
                // Subtitle
                Text("Welcome! Here you can sign up :-",
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
                SizedBox(height: 10),

                // Confirm Password Textfiled
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
                        controller: __confirmPasswordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Confirm Password',
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
                    onTap: (){Navigator
        .of(context)
        .pushReplacement(new MaterialPageRoute(builder: (BuildContext context) {
      return new secondPage();
    }));},
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.amber[900],
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: Center(child: Text('Sign Up',
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
                // Text: sign up
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already a member? ',
                     style:
                     TextStyle( fontWeight: FontWeight.bold)),
                    GestureDetector(
                      onTap: openSignupScreen,
                      child: Text("Sign in here",
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