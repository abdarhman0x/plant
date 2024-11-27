
class Product {
  late String imagePath;
  late String title;
  late String country;
  late int price;
  late String description;

  Product({
    required this.imagePath,
    required this.title,
    required this.country,
    required this.price,
    required this.description,
  });
}
   final List<Product> products =[
     Product(imagePath:"assets/images/plant1.jpg", title:"نبات الصبار \n", country:"روسيا", price:22,description:"نبتة الصبار من افضل النباتات للبشرة والشعر وتعطي منظر حلو في المكان"),
     Product(imagePath:"assets/images/plant3.jpg", title:"نبات الصبار \n", country:"أمريكا", price:22,description: ''),
     Product(imagePath:"assets/images/plant4.jpg", title:"نبات الصبار \n", country:"روسيا", price:22,description: ''),
     Product(imagePath:"assets/images/plant1.jpg", title:"نبات الصبار \n", country:"روسيا", price:22,description: ''),
     Product(imagePath:"assets/images/plant3.jpg", title:"نبات الصبار \n", country:"روسيا", price:22,description: ''),
     Product(imagePath:"assets/images/plant4.jpg", title:"نبات الصبار \n", country:"روسيا", price:22,description: ''),
  ];
