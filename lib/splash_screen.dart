import 'package:flutter/material.dart';
import 'package:test/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    
    Future.delayed(const Duration(seconds: 3)).then((val) {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>const HomePage(),));
    });
  }


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.tealAccent,
      body: Center(
        child: Text('wait 3 seconds'),
      ),
    );
  }
}