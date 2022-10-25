import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  int _tabs = 0;

  @override
  Widget build(BuildContext context) {
    List pages = [
      SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 2300,
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  //Profile & Title
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                          )),
                      Container(
                        width: 30,
                        height: 30,
                        margin: EdgeInsets.only(right: 10),
                      ),
                      Text(
                        "Planetarium",
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 35),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //Tabs
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _tabs = 0;
                            });
                          },
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(50),
                              color: _tabs == 0 ? Colors.white : Colors.black,
                            ),
                            child: Container(
                                margin: EdgeInsets.only(left: 10, right: 10),
                                child: Center(
                                  child: Text(
                                    "All",
                                    style: GoogleFonts.montserrat(
                                        color: _tabs == 0
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _tabs = 1;
                            });
                          },
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(50),
                              color: _tabs == 1 ? Colors.white : Colors.black,
                            ),
                            child: Container(
                                margin: EdgeInsets.only(left: 10, right: 10),
                                child: Center(
                                  child: Text(
                                    "Planets",
                                    style: GoogleFonts.montserrat(
                                        color: _tabs == 1
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _tabs = 2;
                            });
                          },
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(50),
                              color: _tabs == 2 ? Colors.white : Colors.black,
                            ),
                            child: Container(
                                margin: EdgeInsets.only(left: 10, right: 10),
                                child: Center(
                                  child: Text(
                                    "Comets",
                                    style: GoogleFonts.montserrat(
                                        color: _tabs == 2
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _tabs = 3;
                            });
                          },
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(50),
                              color: _tabs == 3 ? Colors.white : Colors.black,
                            ),
                            child: Container(
                                margin: EdgeInsets.only(left: 10, right: 10),
                                child: Center(
                                  child: Text(
                                    "Solar system",
                                    style: GoogleFonts.montserrat(
                                        color: _tabs == 3
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _tabs = 4;
                            });
                          },
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(50),
                              color: _tabs == 4 ? Colors.white : Colors.black,
                            ),
                            child: Container(
                                margin: EdgeInsets.only(left: 10, right: 10),
                                child: Center(
                                  child: Text(
                                    "Asteroids",
                                    style: GoogleFonts.montserrat(
                                        color: _tabs == 4
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  //List
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2.2,
                        height: 300,
                        child: Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.2,
                                  height: 250,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 1.5,
                                          color:
                                              Colors.white.withOpacity(0.5))),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Mars",
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 25),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 5,
                                            height: 15,
                                          ),
                                          Text(
                                            "The Mars is fourth planet\n"
                                            "from the Sun – a dusty, cold,\n"
                                            "desert world with a very\n"
                                            "atmosphere.Mars is also a\n"
                                            "dynamicplanet with seasons,\n"
                                            "polar ice caps, canyons,\n"
                                            "extinct volcanoes,and\n"
                                            "evidence that it was even\n"
                                            "more active in the past.",
                                            style: GoogleFonts.montserrat(
                                                color: Colors.white
                                                    .withOpacity(0.7)),
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset(
                                      "assets/images/mars.png",
                                      fit: BoxFit.cover,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2.2,
                        height: 300,
                        child: Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.2,
                                  height: 250,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 1.5,
                                          color:
                                              Colors.white.withOpacity(0.5))),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Mercury",
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 25),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "The smallest planet in our solar\n"
                                            "system and nearest to the Sun,\n"
                                            "Mercury is only slightly larger\n"
                                            "than Earth's Moon. Mercury's\n"
                                            "surface temperatures are both\n"
                                            "extremely hot and cold. \n"
                                            "Because the planet is so \n"
                                            "close to the Sun",
                                            style: GoogleFonts.montserrat(
                                                color: Colors.white
                                                    .withOpacity(0.7)),
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset(
                                      "assets/images/mercury.png",
                                      fit: BoxFit.cover,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  SizedBox(
                    height: 15,
                  ),
                  //List
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2.2,
                        height: 350,
                        child: Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.2,
                                  height: 300,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 1.5,
                                          color:
                                              Colors.white.withOpacity(0.5))),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Venus",
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 25),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "Venus is the second planet from\n"
                                            "the Sun and is Earth’s closest\n"
                                            "planetary neighbor. It’s one\n"
                                            "of the four inner, terrestrial\n"
                                            "(or rocky) planets, and it’s often \n"
                                            "called Earth’s twin because\n"
                                            "it’s similar in size and density.\n"
                                            "These are not identical twins,\n"
                                            "however – there are radical\n"
                                            "differences between the two\n"
                                            "worlds.",
                                            style: GoogleFonts.montserrat(
                                                color: Colors.white
                                                    .withOpacity(0.7)),
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset(
                                      "assets/images/venus.png",
                                      fit: BoxFit.cover,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2.2,
                        height: 400,
                        child: Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.2,
                                  height: 350,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 1.5,
                                          color:
                                              Colors.white.withOpacity(0.5))),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Earth",
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 25),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "Our home planet is the third\n"
                                            "planet from the Sun, and the\n"
                                            "only place we know of so far\n"
                                            "that’s inhabited by living\n"
                                            "things.While Earth is only the\n"
                                            "fifth largest planet in the\n"
                                            "solar system, it is the only\n"
                                            "world in our solar system with\n"
                                            "liquid water on the surface.\n"
                                            "Just slightly larger than nearby\n"
                                            "Venus, Earth is the biggest of\n"
                                            "the four planets closest to the\n"
                                            "Sun, all of which are made of\n"
                                            "rock and metal.",
                                            style: GoogleFonts.montserrat(
                                                color: Colors.white
                                                    .withOpacity(0.7)),
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.network(
                                      "assets/images/earth.png",
                                      fit: BoxFit.cover,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2.2,
                        height: 400,
                        child: Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.2,
                                  height: 350,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 1.5,
                                          color:
                                              Colors.white.withOpacity(0.5))),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Jupiter",
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 25),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "Fifth in line from the Sun,\n"
                                            "Jupiter is, by far, the largest\n"
                                            " planet in the solar system\n"
                                            "–more than twice as massive\n"
                                            "as all the other planets .\n"
                                            "combined Jupiter's familiar \n"
                                            "stripes and swirls are actually\n"
                                            "cold, windy clouds of ammonia\n"
                                            "and water,floating in an\n"
                                            "atmosphere of hydrogen and \n"
                                            "helium. Jupiter’s iconic Great\n"
                                            "Red Spot is a giant storm \n"
                                            "bigger than Earth that has.\n"
                                            "raged for hundreds of years\n",
                                            style: GoogleFonts.montserrat(
                                                color: Colors.white
                                                    .withOpacity(0.7)),
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset(
                                      "assets/images/jupiter.png",
                                      fit: BoxFit.cover,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2.2,
                        height: 350,
                        child: Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.2,
                                  height: 300,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 1.5,
                                          color:
                                              Colors.white.withOpacity(0.5))),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Saturn",
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 25),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "Saturn is the sixth planet\n"
                                            "from the Sun and the\n"
                                            "second-largest planet in\n"
                                            "our solar system. Adorned\n"
                                            "with thousands of beautiful,\n"
                                            "ringlets Saturn is unique \n"
                                            "among the planets.It is not \n"
                                            "the only planet to have rings – \n"
                                            "made of chunks of ice and \n"
                                            "rock – but none are as \n"
                                            "spectacular or as complicated\n"
                                            "as Saturn's.",
                                            style: GoogleFonts.montserrat(
                                                color: Colors.white
                                                    .withOpacity(0.7)),
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: 190,
                                    height: 100,
                                    child: Image.network(
                                      "assets/images/saturn.png",
                                      fit: BoxFit.cover,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2.2,
                        height: 350,
                        child: Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.2,
                                  height: 300,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 1.5,
                                          color:
                                              Colors.white.withOpacity(0.5))),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Venus",
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 25),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "Venus is the second planet from\n"
                                            "the Sun and is Earth’s closest\n"
                                            "planetary neighbor. It’s one\n"
                                            "of the four inner, terrestrial\n"
                                            "(or rocky) planets, and it’s often \n"
                                            "called Earth’s twin because\n"
                                            "it’s similar in size and density.\n"
                                            "These are not identical twins,\n"
                                            "however – there are radical\n"
                                            "differences between the two\n"
                                            "worlds.",
                                            style: GoogleFonts.montserrat(
                                                color: Colors.white
                                                    .withOpacity(0.7)),
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset(
                                      "assets/images/venus.png",
                                      fit: BoxFit.cover,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2.2,
                        height: 400,
                        child: Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.2,
                                  height: 350,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 1.5,
                                          color:
                                              Colors.white.withOpacity(0.5))),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Earth",
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 25),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "Our home planet is the third\n"
                                            "planet from the Sun, and the\n"
                                            "only place we know of so far\n"
                                            "that’s inhabited by living\n"
                                            "things.While Earth is only the\n"
                                            "fifth largest planet in the\n"
                                            "solar system, it is the only\n"
                                            "world in our solar system with\n"
                                            "liquid water on the surface.\n"
                                            "Just slightly larger than nearby\n"
                                            "Venus, Earth is the biggest of\n"
                                            "the four planets closest to the\n"
                                            "Sun, all of which are made of\n"
                                            "rock and metal.",
                                            style: GoogleFonts.montserrat(
                                                color: Colors.white
                                                    .withOpacity(0.7)),
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.network(
                                      "assets/images/earth.png",
                                      fit: BoxFit.cover,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2.2,
                        height: 375,
                        child: Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.2,
                                  height: 325,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 1.5,
                                          color:
                                              Colors.white.withOpacity(0.5))),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Uranus",
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 25),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "The seventh planet from the\n"
                                            "Sun with the third largest\n"
                                            "diameter in our solar ,\n"
                                            "system Uranus is very cold\n"
                                            "and windy. The ice giant is\n"
                                            "surrounded by 13 faint rings\n"
                                            "and 27 small moons as it \n"
                                            "rotates at a nearly 90-degree \n"
                                            "angle from the plane of its \n"
                                            "orbit. This unique tilt makes \n"
                                            "Uranus appear to spin sideways,\n"
                                            "orbiting the Sun like a rolling\n"
                                            "ball.",
                                            style: GoogleFonts.montserrat(
                                                color: Colors.white
                                                    .withOpacity(0.7)),
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset(
                                      "assets/images/uranus.png",
                                      fit: BoxFit.cover,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2.2,
                        height: 350,
                        child: Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.2,
                                  height: 300,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 1.5,
                                          color:
                                              Colors.white.withOpacity(0.5))),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Neptune",
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 25),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "Dark, cold, and whipped by\n"
                                            "supersonic winds, ice giant\n"
                                            "Neptune is the eighth and most\n"
                                            "distant planet in our solar\n"
                                            "system. More than 30 times as\n"
                                            "far from the Sun as Earth,\n"
                                            "Neptune is the only planet in\n"
                                            "our solar system not visible to\n"
                                            "the naked eye. In 2011 Neptune\n"
                                            "completed its first 165-year\n"
                                            "orbit since its discovery in\n"
                                            "1846.",
                                            style: GoogleFonts.montserrat(
                                                color: Colors.white
                                                    .withOpacity(0.7)),
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.network(
                                      "assets/images/neptune.png",
                                      fit: BoxFit.cover,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      Center(
        child: Text("Search"),
      )
    ];

    return Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedFontSize: 0,
          selectedFontSize: 0,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey.shade400.withOpacity(0.5),
          backgroundColor: Colors.black,
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search_rounded), label: "")
          ],
        ),
        body: pages.elementAt(_currentIndex));
  }
}
