
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key, }) : super(key: key);
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}


class _SignUpPageState extends State<SignUpPage> {
  final _emailControler1 = TextEditingController();
final _passwordController1 = TextEditingController();

  @override
  Future signUp() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _emailControler1.text.trim() , password: _passwordController1.text.trim());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              children: [
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
                  "Sign Up",
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
                        controller: _emailControler1,
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
                        controller: _passwordController1,
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
                      onTap: signUp,
                      child: Center(
                          child: Text(
                        "Sign Up",
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Alraedy a member?  "),
                    Builder(
                      builder: (context) {
                        return GestureDetector(
                          onTap: (() => Navigator.pop(context)),
                          child: Text("Log in",
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.bold)),
                        );
                      }
                    )
                  ],
                )
              ],
            ),
          ),
        )
    );
      
    
  }
}
