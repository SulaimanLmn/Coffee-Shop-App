import 'package:flutter/material.dart';
import 'package:flutter_personal/pages/navpage.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/picture/coffee_bg.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                decoration: const BoxDecoration(color: Colors.black),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 60),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Fall in Love with Coffee in Blissful Delight!',
                            style: GoogleFonts.sora(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Text(
                              "Welcome to our cozy coffee corner, where every cup is a delightful for you.",
                              style: TextStyle(
                                  color: Color.fromARGB(136, 255, 255, 255)),
                            ),
                          ),
                          TextButton(
                              style: const ButtonStyle(
                                shape: WidgetStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)))),
                                backgroundColor: WidgetStatePropertyAll(
                                  Color(0xffc67c43),
                                ),
                                padding: WidgetStatePropertyAll(
                                  EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 93),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const NavPage()));
                              },
                              child: const Text(
                                "Get Started",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
