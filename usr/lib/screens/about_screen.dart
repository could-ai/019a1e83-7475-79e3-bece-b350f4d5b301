import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Viora'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Viora',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Powered by Audora Tech',
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 24),
            Text(
              'Viora – Your ultimate AI-powered image & video generator. Create, explore, and generate unlimited visual content seamlessly.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            SizedBox(height: 24),
            Text(
              'Contact / Support:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'viora.audora@gmail.com',
              style: TextStyle(fontSize: 16, color: Colors.blueAccent),
            ),
          ],
        ),
      ),
    );
  }
}
