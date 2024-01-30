import 'package:exploracion_paquetes/app/pages/home/home_controller.dart';
import 'package:flutter/material.dart';

import '../../services/pinned_shortcur_service.dart';
import '../pinned_shortcut/pinned_shortcut_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
    getIncomingAction();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Menu',
        ),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => HomeController.GoToCalendar(context),
            child: Text('Calendario'),
          ),
          ElevatedButton(
            onPressed: () => HomeController.GoToPinnedShortcut(context),
            child: Text('Atajo de app'),
          ),
        ],
      ),
    );
  }

   void getIncomingAction() {
    PinnedShortcutService.flutterPinnedShortcutPlugin.getLaunchAction((action) {
      print(action);
      switch (action) {
        case "atajo":
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => const PinnedShortcutPage())
          );
          ///navigate to follower screen.
          break;
        case "profile":

        ///navigate to profile screen.
      }
    });
  }
}
