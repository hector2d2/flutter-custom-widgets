import 'package:exploracion_paquetes/app/pages/pinned_shortcut/pinned_shortcut_page.dart';
import 'package:flutter/material.dart';

import '../calendar/calendar_page.dart';

class HomeController{
  static void GoToCalendar(BuildContext context){
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context) => const CalendarPage()),
    );
  }

  static void GoToPinnedShortcut(BuildContext context){
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context) => const PinnedShortcutPage()),
    );
  }
}