import 'package:flutter/material.dart';
import 'package:test/app_assets.dart';
import 'package:test/home_page.dart';
import 'package:test/splash_screen.dart';


List<String> assetImages = [
  AppAssets.bgImage,
  AppAssets.secondImage
];
 
void main() {

  final binding = WidgetsFlutterBinding.ensureInitialized();

  binding.addPostFrameCallback((_) async {
    Element? context = binding.renderViewElement;
    if(context != null)
      {

        // precacheImage(AppAssets.bgImage, context);
        for(var asset in assetImages)
        {
          precacheImage(AssetImage(asset), context);
        }
      }
  });
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'web checking html',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
