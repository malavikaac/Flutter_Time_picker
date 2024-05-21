import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Time Picker Color Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showTimePicker(
              context: context,
              initialTime: TimeOfDay.now(),
              useRootNavigator: false,
              builder: (BuildContext context, Widget? child) {
                return MediaQuery(
                  data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      colorScheme: const ColorScheme.light(
                        primary: const Color(0xff438657), // Change primary color
                        onPrimary: Color.fromARGB(255, 215, 255, 199), // Change color on primary
                        onSurface: Color.fromARGB(255, 124, 124, 124), // Change color on surface
                        onSurfaceVariant: Colors.blueGrey,
                        onSecondary: Color.fromARGB(255, 255, 255, 255),
                      ),
                      textButtonTheme: TextButtonThemeData(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(color: Color.fromARGB(255, 66, 66, 66)),
                        ),
                      ),
                      timePickerTheme: const TimePickerThemeData(
                       dayPeriodColor: Color.fromARGB(255, 211, 211, 211)
                       // amPmBackgroundColor: Colors.green, // Change AM/PM container color
                      ),
                    ),
                    child: child!,
                  ),
                );
              },
            );
          },
          child: const Text('Open Time Picker'),
        ),
      ),
    );
  }
}