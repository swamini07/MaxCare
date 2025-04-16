import 'dart:async';
import 'package:flutter/material.dart';
import 'package:healthcare_app/SignUpPage.dart';
import 'package:healthcare_app/navbar_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
    _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to HomeScreen after 3 seconds
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => NavbarScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(

      
      backgroundColor:const Color.fromARGB(255, 147, 217, 210) ,// Set background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/Vector.png', width: 200, height: 200,color: const Color.fromARGB(255, 4, 65, 114),),
                       const  SizedBox(height: 2),
            // Optional: Text or animation for splash screen
            const Text(
            'Maxcare',
            style: TextStyle(
              fontFamily: "roboto", // Use your preferred font
              fontSize: 45, // Adjust for the required size
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 7, 53, 91), // Choose a color
              shadows: [
                Shadow(
                  offset: Offset(3.0, 3.0), // Shadow position
                  blurRadius: 4.0, // Shadow blur
                  color: Colors.grey
                
                ),
              ],
              letterSpacing: 1.8, // Add spacing between letters
            ),
          ),
                       const SizedBox( height: 10,),
            
            //  const Text(
            //   'Medical app',
            //   selectionColor: Color.fromRGBO(33,51,89,100),
            //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            // ),
          ],
        ),
      ),
    );
  }
}


class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/beautiful-young-female-doctor-looking-camera-office-removebg-preview 1.png',
                  width: 296,
                  height: 467,
                ),
                const SizedBox(height: 5),
                Container(
                  height: 70,
                  width: 270,
                  child: const Text(
                    "Find lot of specialist doctor in one place",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: CircleAvatar(
             backgroundColor:  Colors.teal,
              radius: 30,
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_outlined, color: Colors.black),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Second2Screen extends StatelessWidget {
  const Second2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/doctor-with-his-arms-crossed-white-background-removebg-preview 1.png',
                  width: 300,
                  height: 500,
                ),
                const SizedBox(height: 5),
                const SizedBox(
                  height: 70,
                  width: 270,
                  child: Text(
                    "Get advice only from a doctor you believe in",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: CircleAvatar(
               backgroundColor:  Colors.teal,
              radius: 30,
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_outlined, color: Colors.black),
                onPressed: () {
                   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUpPage()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

