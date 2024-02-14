// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#a5cadf'),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: Text(
                'SignIn',
                style: TextStyle(color: Colors.black, fontSize: 40),
              ),
            ),
            SizedBox(height: 100),
            Container(
              height: 60,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                color: Colors.white30,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Service Number',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 60,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                color: Colors.white30,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomePage(),
                  ),
                );
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
