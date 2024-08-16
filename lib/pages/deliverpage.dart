import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class DeliverPage extends StatefulWidget {
  const DeliverPage({super.key});

  @override
  State<DeliverPage> createState() => _DeliverPageState();
}

class _DeliverPageState extends State<DeliverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(25),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Color.fromARGB(45, 143, 138, 138)),
                          child: Icon(Icons.arrow_back_ios_new),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Color.fromARGB(45, 143, 138, 138)),
                        child: Icon(Icons.gps_fixed),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: DraggableScrollableSheet(
                builder: (context, scrollController) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color: Colors.white,
                    ),
                    child: SingleChildScrollView(
                      controller: scrollController,
                      child: Container(
                        padding: EdgeInsets.all(25),
                        child: Column(
                          children: [
                            Text(
                              "10 Minutes Left",
                              style: GoogleFonts.sora(
                                  fontWeight: FontWeight.w600, fontSize: 17),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: "Delivery to ",
                                      style: GoogleFonts.sora(
                                        color:
                                            Color.fromARGB(255, 143, 138, 138),
                                      )),
                                  TextSpan(
                                      text: "Jl. Kpg Sutoyo",
                                      style: GoogleFonts.sora(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              child: DottedLine(
                                dashGapLength: 10,
                                lineThickness: 5,
                                dashLength: 80,
                                dashColor: Colors.green,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: double.infinity,
                              height: 90,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: const Color.fromARGB(
                                        107, 143, 138, 138),
                                    strokeAlign: BorderSide.strokeAlignInside),
                                borderRadius: BorderRadius.circular(13),
                              ),
                              child: Container(
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Color.fromARGB(
                                                107, 143, 138, 138),
                                            strokeAlign:
                                                BorderSide.strokeAlignInside),
                                      ),
                                      child: Icon(
                                        Icons.drive_eta_rounded,
                                        color:
                                            Color.fromARGB(255, 206, 130, 83),
                                        size: 30,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Delivered Your Order",
                                            style: GoogleFonts.sora(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 15),
                                          ),
                                          Text(
                                            "We will deliver your goods to you in the shortes possible time",
                                            style: GoogleFonts.sora(
                                              color: Color.fromARGB(
                                                  255, 143, 138, 138),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: double.infinity,
                              height: 80,
                              color: Colors.white,
                              child: Row(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/picture/driver_img.png")),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Broklyn Simmons",
                                        style: GoogleFonts.sora(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        "Personal Courier",
                                        style: GoogleFonts.sora(
                                          fontSize: 13,
                                          color: Color.fromARGB(
                                              255, 143, 138, 138),
                                        ),
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              107, 143, 138, 138),
                                          strokeAlign:
                                              BorderSide.strokeAlignInside),
                                    ),
                                    child: Icon(
                                      Icons.phone_in_talk_outlined,
                                      size: 27,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
