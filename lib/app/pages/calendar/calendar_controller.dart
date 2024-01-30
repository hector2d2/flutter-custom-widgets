import 'package:flutter/material.dart';

class CalendarController {
  List<int> calendarDays = [];
  DateTime currentDate = DateTime.now();

  List<int> buildDate(int numberMonth, BuildContext context){
    MaterialLocalizations localizations = MaterialLocalizations.of(context);
    int daysOfMoth = DateUtils.getDaysInMonth(currentDate.year, numberMonth);
    int dayInit = DateUtils.firstDayOffset(currentDate.year, numberMonth,localizations!) - 1;
    calendarDays.clear();
    print(dayInit);
    int day = 0;
    for (var i = 0; i < 42; i++) {
      if(i >= dayInit && day < daysOfMoth ){
        day++;
        calendarDays.add(day);
      }else{
        calendarDays.add(0);
      }
    }
    return calendarDays;
  }

  getNameMonth(int numberMonth){
    switch (numberMonth) {
      case 1:
        return 'Enero';
      case 2: 
        return 'Febrero';
      case 3:
        return 'Marzo';
      case 4:
        return 'Abril';
      case 5:
        return 'Mayo';
      case 6:
        return 'Junio';
      case 7:
        return 'Julio';
      case 8:
        return 'Agosto';
      case 9:
        return 'Septiembre';
      case 10:
        return 'Octubre';
      case 11:
        return 'Noviembre';
      case 12:
        return 'Diciembre';            
    }
  }
}