
import 'package:flutter/material.dart';
bool _isObscure= true;

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(

          child: Center(
            child: SingleChildScrollView(

              child: Column(
                children:[
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 60, left: 60),
                    child: Image.asset('assets/images/sign.png'),
                  ),
                  SizedBox(height: 20,),

                  Text('Welcome', style: TextStyle(color: Colors.blueGrey, fontFamily:'Comfortaa',fontSize: 30),),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 50, right:50 ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: 'Enter your name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:15 ,left: 50, right:50 ),
                    child: TextField(

                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        hintText: 'Enter your phone number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:15 ,left: 50, right:50 ),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        hintText: 'Enter your email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only( top:15 ,left: 50, right:50 ),
                    child: TextField(
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        hintText: 'Enter your password',

                        suffixIcon: IconButton(
                          icon: Icon(_isObscure ? Icons.visibility_off : Icons.visibility,),
                          onPressed: () {
                            setState(() {_isObscure = !_isObscure;
                            });
                          },
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                      ),
                    ),
                  ),

              Padding(
                padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    minimumSize: Size(400, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  onPressed: () {
                  },
                  child: Text('Sign Up',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Comfortaa',

                          fontSize: 20)),
                ),
              ),
                ],
              ),
            ),
          ),
        )
    );
  }
}