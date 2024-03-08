import 'package:flutter/material.dart';
import 'package:test/app_assets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: const Text('html rendered'),),
      body: Column(
        children: [
          const Text('image one'),
          Expanded(child: Image.asset(AppAssets.bgImage,width: w,)),
          const Text('image second'),
          Expanded(child: Image.asset(AppAssets.secondImage,width: w,)),
        ],
      ),
    );
  }
}