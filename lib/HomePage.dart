import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trial/ColorScheme.dart';
import 'TeacherPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePageHere(),
      color: Colors.green,
      routes: {
        '/TeacherPage': (context) => const TeacherPage(),
      },
    );
  }
}

class HomePageHere extends StatefulWidget {
  const HomePageHere({super.key});

  @override
  State<HomePageHere> createState() => _HomePageState();
}

class _HomePageState extends State<HomePageHere> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlue,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 76, 175, 79),
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
              color: Colors.black,
              size: 30,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                // image: DecorationImage(
                //     image: AssetImage("asset/images/searchBg.png"),
                //     ),
                ),
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome back,",
                    style: GoogleFonts.vt323(
                      fontSize: 30,
                      color: const Color.fromARGB(255, 14, 49, 15),
                    ),
                  ),
                  Text(
                    "Kiddo",
                    style: GoogleFonts.vt323(
                      fontSize: 55,
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    height: 70,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            style: GoogleFonts.vt323(
                              fontSize: 18,
                            ),
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search for Books"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(30),
              width: MediaQuery.of(context).size.width,
              color: Color.fromARGB(255, 255, 255, 255),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Top Rated Books",
                        style: GoogleFonts.vt323(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "See all",
                        style: GoogleFonts.vt323(
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          tutorWidget("Eng1", "Story time stars",
                              "Peter Parker", "0-6", "4.7/5"),
                          tutorWidget("Eng2", "Bedtime stories", "Leena Dey",
                              "0-4", "4.5/5"),
                          tutorWidget("Eng3", "The Secret Garden",
                              "Jason Shrute", "0-2", "4/5"),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  InkWell tutorWidget(
      String img, String name, String subj, String grade, String price) {
    return InkWell(
      onTap: openTeacherPage,
      child: Container(
        margin: EdgeInsets.only(top: 20),
        height: 130,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: lightBlue.withOpacity(0.5)),
        child: Row(
          children: [
            Container(
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(30)),
                    child: Container(
                      height: 125,
                      width: 150,
                      decoration: BoxDecoration(
                          // image: DecorationImage(
                          //     image: AssetImage('asset/images/iconBgNew.png'),
                          //     fit: BoxFit.contain)
                          ),
                    ),
                  ),
                  Container(
                    height: 130,
                    padding: EdgeInsets.only(left: 5, top: 5),
                    child: Stack(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          child: RotatedBox(
                            quarterTurns: 2,
                            child: Icon(
                              Icons.star,
                              color: darkBlue,
                              size: 60,
                            ),
                          ),
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          child: Center(
                            child: Text(
                              "4.5",
                              style: GoogleFonts.vt323(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    child: Hero(
                      tag: img,
                      child: Container(
                        width: 100,
                        height: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage('assets/$img.jpg'),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "GRADE $grade",
                          style: GoogleFonts.vt323(
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      name,
                      style: GoogleFonts.vt323(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'by $subj',
                      style: GoogleFonts.vt323(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "$price",
                            style: GoogleFonts.vt323(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void openTeacherPage() {
    Navigator.pushNamed(context, '/TeacherPage');
  }
}
