import 'package:flutter/material.dart';
import 'package:flutter_personal/model/coffee_model.dart';
import 'package:flutter_personal/pages/deliverpage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class OrderPage extends StatefulWidget {
  final int item;

  const OrderPage({super.key, required this.item});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final List<CoffeeModel> coffee = CoffeeModel.getAllCoffee();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(250, 255, 255, 255),
      appBar: AppBar(
        title: Text(
          "Order",
          style: GoogleFonts.sora(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(45, 143, 138, 138),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(4),
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 206, 130, 83),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Text(
                            "Deliver",
                            style: GoogleFonts.sora(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "Pick Up",
                            style: GoogleFonts.sora(
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Delivery Address",
                  style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600, fontSize: 17),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "JL. Kpg Sutoyo",
                  style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600, fontSize: 15),
                ),
                Text(
                  "Kpg. Sutoyo No 620, Blizen, Tanjungbalai.",
                  style: GoogleFonts.sora(
                    color: const Color.fromARGB(255, 143, 138, 138),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: const Color.fromARGB(255, 143, 138, 138),
                            strokeAlign: BorderSide.strokeAlignInside),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.edit_note_outlined,
                            size: 17,
                          ),
                          Text(
                            "Edit Adress",
                            style: GoogleFonts.sora(fontSize: 13),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: const Color.fromARGB(255, 143, 138, 138),
                            strokeAlign: BorderSide.strokeAlignInside),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.notes,
                            size: 17,
                          ),
                          Text(
                            "Add Note",
                            style: GoogleFonts.sora(fontSize: 13),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const Divider(
                  height: 40,
                  indent: 20,
                  endIndent: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(7),
                        ),
                        image: DecorationImage(
                          image: AssetImage(coffee[widget.item].picture),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          coffee[widget.item].name,
                          style: GoogleFonts.sora(
                              fontWeight: FontWeight.w600, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          coffee[widget.item].type,
                          style: GoogleFonts.sora(
                            fontSize: 15,
                            color: const Color.fromARGB(255, 143, 138, 138),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: const Icon(Icons.remove)),
                          Text(
                            "1",
                            style: GoogleFonts.sora(
                                fontWeight: FontWeight.w600, fontSize: 20),
                          ),
                          Container(
                              padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: const Icon(Icons.add))
                        ],
                      ),
                    ),
                  ],
                ),
                const Divider(
                  color: Color.fromARGB(20, 255, 153, 0),
                  thickness: 4,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  width: double.infinity,
                  height: 65,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        IconlyLight.discount,
                        color: Color.fromARGB(255, 206, 130, 83),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "1 Discount is Applies",
                        style: GoogleFonts.sora(
                            fontWeight: FontWeight.w600, fontSize: 17),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.keyboard_arrow_right,
                        size: 25,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "Payment Summary",
                  style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600, fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Price",
                      style: GoogleFonts.sora(fontSize: 17),
                    ),
                    const Spacer(),
                    Text(
                      "\$ ${coffee[widget.item].price}",
                      style: GoogleFonts.sora(
                          fontWeight: FontWeight.w600, fontSize: 20),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      "Delivery Fee",
                      style: GoogleFonts.sora(
                        fontSize: 17,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "\$ 2.0",
                      style: GoogleFonts.sora(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: const Color.fromARGB(239, 67, 66, 66),
                          decoration: TextDecoration.lineThrough),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "\$ 1.0",
                      style: GoogleFonts.sora(
                          fontWeight: FontWeight.w600, fontSize: 20),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(25),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(
                        IconlyLight.wallet,
                        color: Color.fromARGB(255, 206, 130, 83),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cash/Wallet",
                            style: GoogleFonts.sora(
                                fontWeight: FontWeight.w600, fontSize: 17),
                          ),
                          Text(
                            "\$ 5.53",
                            style: GoogleFonts.sora(
                                color: const Color.fromARGB(255, 206, 130, 83),
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.keyboard_arrow_down,
                        size: 27,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const DeliverPage(),
                          ),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 206, 130, 83),
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          "Order",
                          style: GoogleFonts.sora(
                              color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
