import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:topraksiz_tarim/bottom_navigation.dart';
import 'theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color(0xFFE8ECD7),
        scaffoldBackgroundColor: const Color(0xFFE8ECD7), // Açık arka plan
        cardColor: const Color(0xFFEED3B1), // Kart rengi
        sliderTheme: SliderThemeData(
          activeTrackColor: Color(0xFF47663B),
          thumbColor: Colors.green,
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xFF121212),
        scaffoldBackgroundColor: const Color(0xFF121212), // Koyu arka plan
        cardColor: const Color(0xFF1E1E1E), // Koyu kart rengi
        sliderTheme: SliderThemeData(
          activeTrackColor: Colors.greenAccent,
          thumbColor: Colors.greenAccent,
        ),
      ),
      themeMode: themeProvider.isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: const BottomNavigation(),
    );
  }
}
