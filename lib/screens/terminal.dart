import 'package:flutter/material.dart';

class terminal extends StatefulWidget {
  const terminal({super.key});

  @override
  State<terminal> createState() => _terminalState();
}

class _terminalState extends State<terminal> {
  DateTimeRange selectedDates = DateTimeRange(
    start: DateTime.now(),
    end: DateTime.now(),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "${selectedDates.duration.inDays}",
            ),
            ElevatedButton(
              child: const Text("Choose Dates"),
              onPressed: () async {
                final DateTimeRange? dateTimeRange = await showDateRangePicker(
                  context: context,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(3000),
                );
                if (dateTimeRange != null) {
                  setState(() {
                    selectedDates = dateTimeRange;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
