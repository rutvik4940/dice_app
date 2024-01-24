import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home /home_screen.dart';

void main()
{
  runApp(
    MaterialApp(
     debugShowCheckedModeBanner: false,
      routes: {
        "/":(context) => HomeScreen(),
      }

    )
  );
}