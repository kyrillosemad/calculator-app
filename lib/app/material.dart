import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:calculator/presentation/home_screen_ui.dart';

class CALCULATOR extends StatefulWidget {
  const CALCULATOR({super.key});

  @override
  State<CALCULATOR> createState() => _CALCULATORState();
}

class _CALCULATORState extends State<CALCULATOR> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const HOMESCREEN(),
          routes: {
            "main_page": (context) {
              return const HOMESCREEN();
            }
          },
        );
      },
    );
  }
}
