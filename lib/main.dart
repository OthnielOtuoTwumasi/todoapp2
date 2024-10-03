import 'package:flutter/material.dart';
import 'package:todoapp/app_route.dart';
import 'package:todoapp/views/hub_page.dart';
import 'package:todoapp/views/my_day.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        AppRoute.hubPage: (context)=> HubPage(),
        AppRoute.myDay: (context)=>const MyDay(),
      },
      );
  }
}
