import 'package:flutter/material.dart';
import 'package:flutter_personal/model/coffee_model.dart';
import 'package:flutter_personal/model/coffee_size_model.dart';
import 'package:flutter_personal/pages/orderpage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:readmore/readmore.dart';

class ProductPage extends StatefulWidget {
  final int item;
  final List<CoffeeSizeModel> coffeeSize = CoffeeSizeModel.getCoffeeSize();

  ProductPage({super.key, this.item = 0});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List<CoffeeModel> coffee = CoffeeModel.getAllCoffee();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(250, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(250, 255, 255, 255),
        centerTitle: true,
        title: Text(
          "Detail",
          style: GoogleFonts.sora(fontWeight: FontWeight.w700, fontSize: 17),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 35),
            child: Icon(
              IconlyLight.heart,
              size: 27,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    image: DecorationImage(
                        image: AssetImage(coffee[widget.item].picture),
                        fit: BoxFit.fitWidth),
                  ),
                  width: double.infinity,
                  height: 230,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  coffee[widget.item].name,
                  style: GoogleFonts.sora(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Row(
                  children: [
                    Text(
                      "Ice/Hot",
                      style: GoogleFonts.sora(
                        color: const Color.fromARGB(255, 143, 138, 138),
                      ),
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          color: const Color.fromARGB(8, 143, 138, 138),
                          child: const Icon(
                            Icons.delivery_dining,
                            color: const Color.fromARGB(255, 206, 130, 83),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          color: const Color.fromARGB(8, 143, 138, 138),
                          padding: const EdgeInsets.all(5),
                          child: const Icon(
                            Icons.coffee,
                            color: Color.fromARGB(255, 206, 130, 83),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          color: const Color.fromARGB(8, 143, 138, 138),
                          padding: const EdgeInsets.all(5),
                          child: const Icon(
                            Icons.local_drink,
                            color: Color.fromARGB(255, 206, 130, 83),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 243, 221, 26),
                      size: 30,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      "4.8",
                      style: GoogleFonts.sora(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text("(230)")
                  ],
                ),
                const Divider(
                  indent: 20,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Description",
                  style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 80,
                  child: SingleChildScrollView(
                    child: ReadMoreText(
                      coffee[widget.item].description,
                      style: GoogleFonts.sora(
                          color: const Color.fromARGB(255, 143, 138, 138),
                          fontSize: 15),
                      moreStyle: GoogleFonts.sora(
                        color: const Color.fromARGB(255, 206, 130, 83),
                        fontWeight: FontWeight.bold,
                      ),
                      lessStyle: GoogleFonts.sora(
                          color: const Color.fromARGB(255, 206, 130, 83),
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                      trimLines: 4,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: "Read More",
                      trimExpandedText: "Read Less",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Size",
                  style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600, fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    for (var size in widget.coffeeSize) {
                                      size.isSelected = false;
                                    }
                                    widget.coffeeSize[index].isSelected = true;
                                  });
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 110,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color:
                                        widget.coffeeSize[index].isSelected ==
                                                true
                                            ? Color.fromARGB(68, 247, 215, 195)
                                            : Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                    border: Border.all(
                                      color: widget.coffeeSize[index]
                                                  .isSelected ==
                                              true
                                          ? const Color.fromARGB(
                                              255, 206, 130, 83)
                                          : Color.fromARGB(255, 143, 138, 138),
                                    ),
                                  ),
                                  child: Text(
                                    widget.coffeeSize[index].size,
                                    style: GoogleFonts.sora(
                                        fontSize: 16,
                                        color: widget.coffeeSize[index]
                                                    .isSelected ==
                                                true
                                            ? const Color.fromARGB(
                                                255, 206, 130, 83)
                                            : Colors.black),
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                width: 20,
                              );
                            },
                            itemCount: widget.coffeeSize.length),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              padding: const EdgeInsets.all(25),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Price",
                        style: GoogleFonts.sora(
                          color: const Color.fromARGB(255, 143, 138, 138),
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "\$ ${coffee[widget.item].price}",
                        style: GoogleFonts.sora(
                          color: const Color.fromARGB(255, 206, 130, 83),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => OrderPage(item: widget.item)));
                    },
                    child: const Text("Buy Now"),
                    style: ButtonStyle(
                        shape: const WidgetStatePropertyAll(
                            ContinuousRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)))),
                        backgroundColor: const WidgetStatePropertyAll(
                            Color.fromARGB(255, 206, 130, 83)),
                        padding: const WidgetStatePropertyAll(
                            EdgeInsets.symmetric(horizontal: 80, vertical: 20)),
                        foregroundColor:
                            const WidgetStatePropertyAll(Colors.white),
                        textStyle: WidgetStatePropertyAll(
                            GoogleFonts.sora(fontSize: 20))),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
