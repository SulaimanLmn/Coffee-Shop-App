// ignore_for_file: public_member_api_docs, sort_constructors_first
class CoffeeSizeModel {
  String size;
  bool isSelected;
  CoffeeSizeModel({
    required this.size,
    required this.isSelected,
  });

  static getCoffeeSize() {
    List<CoffeeSizeModel> coffeeSize = [];

    coffeeSize.add(CoffeeSizeModel(size: "S", isSelected: false));
    coffeeSize.add(CoffeeSizeModel(size: "M", isSelected: true));
    coffeeSize.add(CoffeeSizeModel(size: "L", isSelected: false));

    return coffeeSize;
  }
}
