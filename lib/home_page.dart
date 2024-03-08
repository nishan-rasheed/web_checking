import 'package:flutter/material.dart';
import 'package:test/app_assets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(title: const Text('Canvas skit'),),
      // body: Image(
      //   height: h,width: w,
      //   image: ResizeImage(
      //   const AssetImage(AppAssets.bgImage,),
      //   width: w.toInt(),height: h.toInt(),
      //   ),
      //   fit: BoxFit.cover,
      //   ),
      // body: Image.asset(AppAssets.secondImage,
      //       cacheHeight: h.toInt(),
      //       cacheWidth: w.toInt(),
      //       fit: BoxFit.fill,
      // )
      body: Image.asset(AppAssets.bgImage,
      height: h,width: w,
      fit: BoxFit.cover,
      ),
    );
  }
}