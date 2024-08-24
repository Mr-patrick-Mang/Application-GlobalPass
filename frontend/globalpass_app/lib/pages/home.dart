import "package:flutter/material.dart";
import 'dart:ui';

import 'package:globalpass_app/pages/welcomePage.dart'; // Import for the blur effect

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Color.fromARGB(255, 7, 17, 204),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.10), // 20% from top
                Padding(
                  padding: EdgeInsets.only(left: 25.0), // Adjust the left padding as needed
                  child: CircleAvatar(
                    radius: 40, // Adjust the radius for the logo size
                    backgroundColor: Colors.white,
                    child: Image.asset('assets/icons/logo.png',
                      width: 55.0,   
                      height: 55.0,
                    ) 
                  ),
                ),
                SizedBox(height: 20), // Adjust the height for spacing
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0), // Adjust padding as needed
                  child: Text(
                    'Modern Immigration for Everyone',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36, // Increased font size
                      fontFamily: 'Times New Roman', // Times New Roman font
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left, // Align text to the left
                  ),
                ),
                Spacer(),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your onPressed code here!
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Welcomepage()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: Text('Begin'),
                  ),
                ),
                SizedBox(height: 260), // Space between the button and the blur effect
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 3, // 1/3 of the screen height
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(0.6),
                    Colors.red.withOpacity(0.6),
                  ],
                ),
              ),
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent, // This keeps the gradient visible
                          Colors.transparent,
                        ],
                      ),
                    )
                  )
                )
              )
            ),
          ),
        ],
      ),
    );
  }
}