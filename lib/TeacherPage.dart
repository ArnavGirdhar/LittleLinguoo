import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trial/ColorScheme.dart';

class TeacherPage extends StatefulWidget {
  const TeacherPage({super.key});

  @override
  State<TeacherPage> createState() => _TeacherPageState();
}

class _TeacherPageState extends State<TeacherPage> {
  int selectedDate = DateTime.now().day;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe7f4f5),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 200,
                height: 260,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 200,
                        height: 240,
                        decoration: const BoxDecoration(
                            //image: DecorationImage(
                            // image: AssetImage('asset/images/iconBg.png'),
                            //fit: BoxFit.contain),
                            ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: Hero(
                        tag: " ",
                        child: Container(
                          height: 220,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: AssetImage('assets/Eng1.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Story time stars",
                        style: GoogleFonts.vt323(fontSize: 26),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "by Peter Parker",
                        style: GoogleFonts.vt323(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 20,
                            width: 20,
                            child: RotatedBox(
                              quarterTurns: 2,
                              child: Icon(
                                Icons.star,
                                color: darkBlue,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "4.7 Star Rating",
                            style: GoogleFonts.vt323(
                              fontSize: 17,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: const BoxDecoration(
                                // image: DecorationImage(
                                //     image: AssetImage(
                                //         'asset/images/palette.png'),
                                //         ),
                                ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(30),
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ABOUT STORY TIME STARS",
                      style: GoogleFonts.vt323(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Story Time Stars, is an enchanting storybook that takes young readers on an exciting journey through the realms of imagination and storytelling. This captivating collection of tales is filled with adventure, mystery, friendship, and valuable life lessons.",
                      style: GoogleFonts.vt323(fontSize: 18),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "BOOKS BY PETER",
                      style: GoogleFonts.vt323(
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            courseWidget("animals", "Grims \nFairytales",
                                "GRADE 0-1", lightBlue, darkBlue),
                            courseWidget("rabit", " Alice \n and rabits",
                                "GRADE 0-2", yellow, const Color(0xff4d4d4d)),
                            courseWidget("train", " Early \n train",
                                "GRADE 0-3", pink, const Color(0xff4a155f))
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "STORY TIME STARS",
                      style: GoogleFonts.vt323(
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                        color: const Color.fromARGB(255, 255, 115, 105),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Text(
                        'Once upon a time, in a small village nestled between rolling hills, there lived a group of friends who loved stories more than anything else. They called themselves the "Story Time Stars." Every evening, they gathered under a majestic oak tree, ready to embark on new adventures through the pages of their favorite books. One bright and sunny day, as the friends sat together sharing their excitement for their next story, they noticed a peculiar object glistening in the grass. It was a sparkling silver key! The friends gasped in awe and wondered what it could unlock. With curiosity and excitement swirling in their hearts, the Story Time Stars set off on a quest to discover the keys secret. Guided by their vivid imaginations, they followed a winding path that led them deep into the enchanted forest. As they ventured further into the woods, the atmosphere grew magical. The trees whispered secrets, and colorful butterflies danced around them. Finally, they arrived at a hidden door nestled between two ancient trees.',
                        style: GoogleFonts.vt323(
                            fontSize: 30,
                            color: const Color.fromARGB(255, 20, 107, 23)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container courseWidget(
      String img, String name, String grade, Color color, Color textColor) {
    return Container(
      height: 100,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: color),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  name,
                  style: GoogleFonts.vt323(
                      color: textColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  grade,
                  style: GoogleFonts.vt323(color: Colors.grey, fontSize: 11),
                )
              ],
            ),
          ),
          Container(
            height: 90,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage('assets/$img.jpg'), fit: BoxFit.fill),
            ),
          )
        ],
      ),
    );
  }
}
