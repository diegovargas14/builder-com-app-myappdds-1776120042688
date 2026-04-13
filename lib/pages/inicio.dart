import 'package:flutter/material.dart';
import '../widgets/stateful_widgets.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
  'Texto de ejempsadsadslo',
  style: TextStyle(fontSize: 16, color: const Color(0xFF333333)),
  
),
          Container(
  width: 100,
  
  
  
  
  child: Image.network(
  'https://images.unsplash.com/photo-1689308271305-58e75832289b?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE1fHx8ZW58MHx8fHx8',
  width: 100,
  
  fit: BoxFit.cover,
),
),
        ],
      ),
    ),
    );
  }
}
