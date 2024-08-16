import 'package:flutter/material.dart';
import 'package:flutter_personal/model/coffee_model.dart';
import 'package:flutter_personal/model/coffee_type_model.dart';
import 'package:flutter_personal/pages/productpage.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<CoffeeTypeModel> coffeeType = CoffeeTypeModel.getCoffeeType();
  List<CoffeeModel> coffee = CoffeeModel.getAllCoffee();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 300,
                color: const Color(0xFF313131),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Location',
                  style: GoogleFonts.sora(
                    color: const Color.fromARGB(136, 255, 255, 255),
                    fontSize: 10,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Bilzen, Tanjungbalai ",
                  style: GoogleFonts.sora(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Container(
                      width: 285,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                          color: Color.fromARGB(56, 89, 88, 88)),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          hintText: "Search coffee",
                          hintStyle: GoogleFonts.sora(
                            color: const Color.fromARGB(136, 255, 255, 255),
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: 60,
                      height: 50,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 206, 130, 83),
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      child: const Icon(
                        Icons.widgets_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Color(0xffc67c4e),
                      image: DecorationImage(
                          image: AssetImage("assets/picture/Banner.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  width: double.infinity,
                  height: 180,
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 35,
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            for (var coffee in coffeeType) {
                              coffee.isSelected = false;
                            }
                            coffeeType[index].isSelected = true;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: coffeeType[index].isSelected == true
                                  ? const Color.fromARGB(255, 206, 130, 83)
                                  : const Color.fromARGB(12, 199, 197, 197),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5))),
                          child: Text(
                            coffeeType[index].type,
                            style: TextStyle(
                                fontSize: 17,
                                color: coffeeType[index].isSelected == true
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: coffeeType[index].isSelected == true
                                    ? FontWeight.bold
                                    : FontWeight.normal),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 10,
                    ),
                    itemCount: coffeeType.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.73,
                        crossAxisSpacing: 10,

                        mainAxisSpacing:
                            10, // Adjust this to control height-to-width ratio
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          width: 156,
                          child: Container(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            padding: const EdgeInsets.all(5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 128,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      image: DecorationImage(
                                          image:
                                              AssetImage(coffee[index].picture),
                                          fit: BoxFit.cover),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10))),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  coffee[index].name,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  coffee[index].type,
                                  style: const TextStyle(
                                      fontSize: 15,
                                      color:
                                          Color.fromARGB(255, 143, 138, 138)),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "\$ ${coffee[index].price}",
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Spacer(),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ProductPage(item: index),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 206, 130, 83),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(7),
                                          ),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(7),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: coffee.length,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
