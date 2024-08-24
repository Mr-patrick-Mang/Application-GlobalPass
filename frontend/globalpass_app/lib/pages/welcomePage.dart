import "package:flutter/material.dart";

class Welcomepage extends StatelessWidget{
  const Welcomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icons/welcomepage.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Overlay container
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: Colors.black.withOpacity(0.6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 30), // To give some space from the top
                  Image.asset(
                    'assets/icons/logo.png',
                    width: 100.0,
                    height: 100.0,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Welcome to the GlobalPass',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Let\'s simplify your permanent journey to a new country',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    ),
                    child: Text('Sign up for free'),
                  ),
                  SizedBox(height: 20),
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.account_circle, color: Colors.white),
                    label: Text(
                      'Continue with Google',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.account_circle, color: Colors.white),
                    label: Text(
                      'Continue with Apple',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Log in',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 50), // To give some space from the bottom
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}