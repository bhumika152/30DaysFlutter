

class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}

final products = [
  Item(
    id: "Codepur001",
    name: "iphone 12 pro",
    desc: "Apple Orginal",
    price: 67889,
    color: "#33505a",
    image: "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MHL73?wid=1144&hei=1144&fmt=jpeg&qlt=90&.v=1623349258000",
  ),
];
