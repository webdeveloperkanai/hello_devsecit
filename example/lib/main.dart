// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, avoid_web_libraries_in_flutter, unused_import

import 'package:flutter/material.dart';
import 'package:hello_devsecit/hello_devsecit.dart';
import 'dart:html' as html; 
import 'package:hello_devsecit/hello_devsecit_web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello DSI DEMO',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            H1(
              text: "H1 text",
              color: DSIHexColor("#cceeff"),
            ),
            H2(
              text: "H2 text",
              color: DSIHexColor("#000000"),
              fontSize: 12,
            ),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Paragraph(
                  text:
                      """Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."""),
            ),
            Container(
              width: 250,
              child: DSI_PRIMARY_BUTTON(
                title: "Primary Button",
                onPressed: () {
                  setWebTitle("This is new title");
                },
                borderradius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(height: 25),
            Container(
              width: 250,
              child: DSI_SECONDARY_BUTTON(
                title: "Primary Button",
                onPressed: () {},
                borderradius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
