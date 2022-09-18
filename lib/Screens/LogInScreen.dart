import 'package:appten/Screens/SignUpScreen.dart';
import 'package:appten/Data/navigation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LogInScreen extends StatefulWidget {
  LogInScreen({Key? key, }) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

final _emailControler = TextEditingController();
final _passwordController = TextEditingController();
Future signIn() async {
  await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailControler.text.trim(),
      password: _passwordController.text.trim());
}

class _LogInScreenState extends State<LogInScreen> {
  @override


  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.grey[300],
          body: Center(
            child: SingleChildScrollView(
              reverse: true,
              child: Column(children: [
                SizedBox(
                  height: 50,
                ),
                Icon(
                  Icons.shopping_bag,
                  size: 100,
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Welcome!",
                  style: GoogleFonts.pacifico(fontSize: 50),
                ),
                SizedBox(
                  height: 70,
                ),
                //Email textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        
                        controller: _emailControler,
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'Email'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                // Password textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'Password'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                //Sign in button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(15)),
                    child: GestureDetector(
                      onTap: signIn,
                      child: Center(
                          child: Text(
                        "Sign In",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("Not a member?  "),
                  // pop back to login screen 
                  Builder(
                    builder: (context) {
                      return GestureDetector( onTap: 
                        navigateTo(context, SignUpPage()),
                      
                        child: Text("Register Now!",
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold)),
                      );
                    }
                  ),
                ]),
              ]),
            ),
          ),
        ));
  }
}
