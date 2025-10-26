import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _isEphemeralMode = false;
  String _selectedEngine = 'Default Engine';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [
          SwitchListTile(
            title: const Text('Ephemeral Mode'),
            subtitle: const Text('Generate content without saving to history'),
            value: _isEphemeralMode,
            onChanged: (bool value) {
              setState(() {
                _isEphemeralMode = value;
              });
            },
            secondary: const Icon(Icons.privacy_tip),
          ),
          ListTile(
            leading: const Icon(Icons.memory),
            title: const Text('Preferred AI Engine'),
            subtitle: Text(_selectedEngine),
            onTap: () {
              // Placeholder for engine selection dialog
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings_applications),
            title: const Text('Generation Settings'),
            subtitle: const Text('Resolution, style, video duration'),
            onTap: () {
              // Placeholder for detailed AI settings
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.delete_forever),
            title: const Text('Clear History'),
            subtitle: const Text('Deletes all prompts and generations'),
            onTap: () {
              // Placeholder for clearing history
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About Viora'),
            onTap: () {
              Navigator.pushNamed(context, '/about');
            },
          ),
        ],
      ),
    );
  }
}
