import 'package:flutter/material.dart';
import 'pages/home_page.dart';
/*import 'package:music_app/themes/dark_mode.dart';
import 'package:music_app/themes/light_mode.dart';
was removed after using theme provider
*/
import 'package:provider/provider.dart';
import 'package:music_app/themes/theme_provider.dart';


void main() {
  runApp(
     ChangeNotifierProvider(
         create: (context) => ThemeProvider(), // removed runApp(const MyApp());
         child: const MyApp(),
         ),
  );    
}        


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Homepage(),
      theme:Provider.of<ThemeProvider>(context).themedata, 
    );
  }
}

  