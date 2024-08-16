class CoffeeModel {
  String picture;
  String name;
  String type;
  double price;
  String description;
  CoffeeModel(
      {required this.picture,
      required this.name,
      required this.type,
      required this.price,
      required this.description});

  static List<CoffeeModel> getAllCoffee() {
    List<CoffeeModel> coffee = [];

    coffee.add(CoffeeModel(
        name: "Caffe Mocha",
        picture: "assets/picture/product_1.png",
        price: 4.53,
        type: "Deep Foam",
        description:
            "A delightful blend of rich espresso, steamed milk, and velvety chocolate syrup, topped with a light layer of foam or whipped cream. It's a perfect choice for those who love the deep flavors of coffee with a sweet, chocolatey twist. Ideal for a cozy, indulgent treat."));

    coffee.add(CoffeeModel(
        picture: "assets/picture/product_2.png",
        name: "Flat White",
        type: "Expresso",
        price: 3.53,
        description:
            " A smooth and velvety coffee made with a double shot of espresso and steamed milk, topped with a thin layer of microfoam. The rich espresso flavor shines through, complemented by the creamy texture of the milk. It's a balanced, straightforward coffee experience, perfect for those who appreciate the pure taste of espresso with a touch of creaminess."));

    coffee.add(CoffeeModel(
        picture: "assets/picture/product_3.png",
        name: "Machiato",
        type: "latte",
        price: 2.25,
        description:
            'A bold and flavorful coffee made by "marking" a shot of espresso with a small amount of steamed milk or milk foam. The word "macchiato" means "stained" or "spotted" in Italian, reflecting the way the milk lightly tops the espresso. This coffee is strong, with the rich intensity of espresso complemented by a subtle creaminess, offering a perfect balance for those who enjoy a concentrated coffee experience with a hint of smoothness'));

    coffee.add(CoffeeModel(
        picture: "assets/picture/product_4.png",
        name: "Expresso",
        type: "Expresso",
        price: 1.52,
        description:
            "A concentrated coffee brewed by forcing a small amount of nearly boiling water through finely-ground coffee beans under high pressure. This method creates a strong, rich, and intense flavor, with a thicker consistency and a layer of crema on top. Espresso serves as the base for many popular coffee drinks like lattes, cappuccinos, and macchiatos, but it's also enjoyed on its own for its deep, robust taste."));

    return coffee;
  }
}
