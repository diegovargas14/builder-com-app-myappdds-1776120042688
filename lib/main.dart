import 'package:flutter/material.dart';
import 'pages/inicio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF4F46E5),
          secondary: const Color(0xFF7C3AED),
          surface: const Color(0xFFF8FAFC),
        ),
        scaffoldBackgroundColor: const Color(0xFFF8FAFC),
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: const Color(0xFF1E293B)),
        ),
        fontFamily: 'Inter, sans-serif',
        useMaterial3: true,
      ),
      initialRoute: '/inicio',
      routes: {
        '/inicio': (context) => const InicioPage(),
      },
    );
  }
}
