import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:today_list/models/task_data.dart';
import 'package:today_list/screen/task_screen.dart';
import 'package:provider/provider.dart';
import 'package:today_list/models/task_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
     
      create: (context)=>TaskData(),
         //builder: (context)=>TaskData();
      
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}

