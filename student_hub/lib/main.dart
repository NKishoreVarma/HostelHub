import 'package:flutter/material.dart';
import 'screens/stateless_stateful_demo.dart';

void main() {
  runApp(const StudentHubApp());
}

class StudentHubApp extends StatelessWidget {
  const StudentHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StatelessStatefulDemo(),
    );
  }
}
