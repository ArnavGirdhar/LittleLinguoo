import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trial/ColorScheme.dart';
import 'HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
      routes: {
        '/HomePage': (context) => const HomePage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlue,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          ShaderMask(
            shaderCallback: (rect) {
              return const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black, Colors.transparent],
              ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
            },
            blendMode: BlendMode.dstIn,
            child: Image.asset(
              'assets/Children.jpg',
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "WHERE KIDS LOVE LEARNING",
                  style: GoogleFonts.vt323(
                    fontSize: 32,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Distant Learning & Home \nSchooling Made Easy",
                  style: GoogleFonts.vt323(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Getting Started",
                  style: GoogleFonts.vt323(
                    fontSize: 20,
                  ),
                ),
                const Icon(
                  Icons.keyboard_double_arrow_down_sharp,
                  size: 35,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 15,
                          color: Colors.black.withOpacity(0.1),
                        )),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: darkBlue,
                      ),
                      // child: IconButton(
                      //   onPressed: openHomePage,
                      //   icon: const Icon(
                      //     Icons.arrow_forward_ios,
                      //     color: Colors.white,
                      //   ),
                      // ),
                      child: TextButton(
                        onPressed: openHomePage,
                        child: Text(
                          "Start",
                          style: GoogleFonts.vt323(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
    //);
  }

  void openHomePage() {
    Navigator.of(context).pushNamed('/HomePage');
  }
}
