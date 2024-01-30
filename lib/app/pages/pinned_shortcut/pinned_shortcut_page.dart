import 'package:flutter/material.dart';

import '../../services/pinned_shortcur_service.dart';

class PinnedShortcutPage extends StatelessWidget {
  const PinnedShortcutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pinned Shortcut'),
      ),
      body: Column(
        children: [
          Text(
            'Este es un atajo de la aplicacion.',
          ),
          ElevatedButton(
            onPressed: () {
              PinnedShortcutService.flutterPinnedShortcutPlugin.createPinnedShortcut(
                id: "1",
                label: "atajo",
                action: "atajo",
                iconAssetName: "assets/images/testlogo2.jpeg"
              );
            },
            child: Text(
              'Crear Atajo de aplicacion.',
            ),
          ),
        ],
      ),
    );
  }
}
