import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.black,
  ));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  double _progress = 0.33;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            //Planets
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 500,
                  width: 500,
                  child: PageView(
                    controller: _pageController,
                    children: [
                      Container(
                        width: 300,
                        height: 300,
                        child: Image.asset(
                          "assets/images/Galaxy-PNG.png",
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Container(
                        width: 300,
                        height: 300,
                        child: Image.network(
                          "assets/images/black hole.png",
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //Text
            Text(
              "Explore the \nuniverse!",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w700,
                  fontSize: 45,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Learn more about the \nuniverse where we all live \nIn Planetarium v1.",
              style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15,
            ),
            //Button & Progress
            Container(
              width: 100,
              height: 100,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: Colors.blue,
                      value: _progress == 0.99 ? 1 : _progress,
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          _progress += 0.5;
                        });
                        if (_pageController.hasClients) {
                          _pageController.animateToPage(
                              _pageController.page!.toInt() + 1,
                              duration: Duration(milliseconds: 400),
                              curve: Curves.easeInOut);
                        }
                        if (_pageController.page!.toInt() == 1) {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (_) => HomePage()),
                              (route) => false);
                        }
                      },
                      child: Container(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Center(
                          child: Icon(
                            Icons.play_arrow_rounded,
                            color: Colors.black,
                          ),
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
