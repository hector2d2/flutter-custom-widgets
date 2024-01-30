import 'package:exploracion_paquetes/app/pages/calendar/calendar_controller.dart';
import 'package:flutter/material.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  List<int> calendarDays = [];
  DateTime currentDateTime = DateTime.now();
  CalendarController calendarController = new CalendarController();
  String month = '';
  int currentMonth = 0;

  @override
  void initState() {
    currentMonth = currentDateTime.month;
    month = calendarController.getNameMonth(currentMonth);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    calendarDays = calendarController.buildDate(currentDateTime.month, context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendario'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(        
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    backMonth();
                    setState(() {});
                  },
                  child: Text(
                    'Atras',
                  ),
                ),
                Text(month),
                ElevatedButton(
                  onPressed: () {
                    nextMonth();
                    setState(() {});
                  },
                  child: Text(
                    'Adelante',
                  ),
                ),
              ],
            ),
            Container(
              height: 30,
              child: GridView.count(                
                shrinkWrap: true,
                primary: true,                
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 7,
                children: cardsLetterInitialDay(),
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              primary: true,              
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 7,
              children: cardsOfDay(
                calendarDays,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Widgets
  List<Widget> cardsOfDay(List<int> daysOfMonth) {
    return daysOfMonth
        .map(
          (day) => Container(
            child: Text('$day'),
          ),
        )
        .toList();
  }

  List<Widget> cardsLetterInitialDay() {
    return [
      Container(
        child: Text('L'),
      ),
      Container(
        child: Text('M'),
      ),
      Container(
        child: Text('M'),
      ),
      Container(
        child: Text('J'),
      ),
      Container(
        child: Text('V'),
      ),
      Container(
        child: Text('S'),
      ),
      Container(
        child: Text('D'),
      ),
    ];
  }

  /// metodos / funciones
  void nextMonth() {
    if (currentMonth == 12) return;
    currentMonth++;
    month = calendarController.getNameMonth(currentMonth);
    calendarDays = calendarController.buildDate(currentMonth, context);
  }

  void backMonth() {
    if (currentMonth == 1) return;
    currentMonth--;
    month = calendarController.getNameMonth(currentMonth);
    calendarDays = calendarController.buildDate(currentMonth, context);
  }
}
