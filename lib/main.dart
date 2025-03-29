import 'package:ebook_app/home_page.dart';
import 'package:ebook_app/nation.dart';
import 'package:flutter/material.dart';
import 'book.dart';
import 'book_tile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '原神六國導覽',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
