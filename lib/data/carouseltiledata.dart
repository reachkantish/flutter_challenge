import 'package:flutterchallenge/models/carousel_tile.dart';

List<CarouselTileModel> getCarouselTileData() {
  List<CarouselTileModel> carouselTileData = new List();
  CarouselTileModel carouselTileModel = new CarouselTileModel();

  //1
  carouselTileModel.imgPath = "assets/legotaj.jpeg";
  carouselTileModel.family = "Creator";
  carouselTileModel.ageRange = "16+";
  carouselTileModel.price = "\$399";
  carouselTileModel.title = "Lego Taj Mahal";
  carouselTileData.add(carouselTileModel);

  carouselTileModel = new CarouselTileModel();

  //2
  carouselTileModel.imgPath = "assets/legomack.jpeg";
  carouselTileModel.family = "Technic";
  carouselTileModel.ageRange = "11 - 16";
  carouselTileModel.price = "\$229";
  carouselTileModel.title = "Lego Mack Anthem";
  carouselTileData.add(carouselTileModel);

  carouselTileModel = new CarouselTileModel();

  //3
  carouselTileModel.imgPath = "assets/legofriends.jpg";
  carouselTileModel.family = "Ideas";
  carouselTileModel.ageRange = "16+";
  carouselTileModel.price = "\$179";
  carouselTileModel.title = "Lego Friends Central Perk";
  carouselTileData.add(carouselTileModel);

  carouselTileModel = new CarouselTileModel();

  //4
  carouselTileModel.imgPath = "assets/legoboeing.jpg";
  carouselTileModel.family = "Creator";
  carouselTileModel.ageRange = "10 - 15";
  carouselTileModel.price = "\$299";
  carouselTileModel.title = "Lego Boeing Dreamliner";
  carouselTileData.add(carouselTileModel);

  carouselTileModel = new CarouselTileModel();

  //5
  carouselTileModel.imgPath = "assets/legoharley.jpeg";
  carouselTileModel.family = "Creator";
  carouselTileModel.ageRange = "16+";
  carouselTileModel.price = "\$169";
  carouselTileModel.title = "Lego Harley Davidson Fat Boy";
  carouselTileData.add(carouselTileModel);

  carouselTileModel = new CarouselTileModel();

  return carouselTileData;
}
