class CoffeeTypeModel {
  String type;
  bool isSelected;
  CoffeeTypeModel({required this.type, required this.isSelected});

  static List<CoffeeTypeModel> getCoffeeType() {
    List<CoffeeTypeModel> type = [];

    type.add(CoffeeTypeModel(type: "All Coffee", isSelected: true));
    type.add(CoffeeTypeModel(type: "Machiato", isSelected: false));
    type.add(CoffeeTypeModel(type: "Lattee", isSelected: false));
    type.add(CoffeeTypeModel(type: "Americano", isSelected: false));

    return type;
  }
}
