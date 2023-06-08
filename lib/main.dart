import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsapp/views/job_details_view.dart';
import 'package:jobsapp/views/tabview/tab_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jobsapp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: JobDetailsView(),
    );
  }
}
