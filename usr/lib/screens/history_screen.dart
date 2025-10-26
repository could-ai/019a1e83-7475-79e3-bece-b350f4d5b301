import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  // Dummy data for demonstration
  final List<Map<String, String>> historyItems = const [
    {'prompt': 'A futuristic city at sunset', 'type': 'Image'},
    {'prompt': 'A dragon flying over mountains', 'type': 'Video'},
    {'prompt': 'An enchanted forest with glowing mushrooms', 'type': 'Image'},
    {'prompt': 'A robot orchestra playing classical music', 'type': 'Image'},
    {'prompt': 'A lone astronaut on a red planet', 'type': 'Video'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('History'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Placeholder for search functionality
            },
            tooltip: 'Search History',
          ),
          IconButton(
            icon: const Icon(Icons.delete_sweep),
            onPressed: () {
              // Placeholder for "Forget All"
            },
            tooltip: 'Forget All',
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: historyItems.length,
        itemBuilder: (context, index) {
          final item = historyItems[index];
          return ListTile(
            leading: Icon(
              item['type'] == 'Image' ? Icons.image : Icons.videocam,
            ),
            title: Text(item['prompt']!),
            subtitle: Text(item['type']!),
            onTap: () {
              // Placeholder to view the generated content
            },
          );
        },
      ),
    );
  }
}
