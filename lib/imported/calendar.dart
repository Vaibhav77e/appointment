import 'package:appointment/widgets/customGrid.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime lastDay = DateTime(2100);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select date for an appointement"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TableCalendar(
              calendarFormat: _calendarFormat,
              firstDay: DateTime(1900),
              lastDay: lastDay,
              focusedDay: DateTime.now(),
              onDaySelected: (newSelectedDay, focusedDay) {
                setState(() {
                  selectedDay = newSelectedDay;
                });
              },
              availableCalendarFormats: const {
                CalendarFormat.month: 'Month',
                // CalendarFormat.twoWeeks: '',
                // CalendarFormat.week: 'Week'
              },
              calendarBuilders: CalendarBuilders(
                selectedBuilder: (context, selectedDay, lastDay) => Container(
                    margin: const EdgeInsets.all(5.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Text(
                      selectedDay.day.toString(),
                      style: const TextStyle(color: Colors.white),
                    )),
                todayBuilder: (context, date, events) => Container(
                    margin: const EdgeInsets.all(5.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 251, 172, 148),
                        borderRadius: BorderRadius.circular(24.0)),
                    child: Text(
                      date.day.toString(),
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.30,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: CustomGrid(),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 251, 172, 148),
                      borderRadius: BorderRadius.circular(12)),
                  child: const Text(
                    'Book Now',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
