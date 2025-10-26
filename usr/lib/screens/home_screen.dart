import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _promptController = TextEditingController();
  bool _isGenerating = false;
  bool _generationComplete = false;

  void _generate() {
    if (_promptController.text.isEmpty) return;

    setState(() {
      _isGenerating = true;
      _generationComplete = false;
    });

    // Simulate AI generation
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _isGenerating = false;
        _generationComplete = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Viora'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: _isGenerating
                    ? const CircularProgressIndicator()
                    : _generationComplete
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.image,
                                size: 150,
                                color: Colors.grey[700],
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.download),
                                    onPressed: () {
                                      // Placeholder for download
                                    },
                                    tooltip: 'Download',
                                  ),
                                  const SizedBox(width: 20),
                                  IconButton(
                                    icon: const Icon(Icons.share),
                                    onPressed: () {
                                      // Placeholder for share
                                    },
                                    tooltip: 'Share',
                                  ),
                                ],
                              )
                            ],
                          )
                        : Text(
                            'Enter a prompt to generate an image or video.',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey[400]),
                          ),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _promptController,
              decoration: InputDecoration(
                labelText: 'Enter your prompt here...',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: _generate,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
