import 'package:flutterchallenge/models/bottom_tile.dart';

List<BottomTileModel> getBottomTileData() {
  List<BottomTileModel> bottomTileData = new List();
  BottomTileModel bottomTileModel = new BottomTileModel();

  //1
  bottomTileModel.imgPath = "assets/legotaj.jpeg";
  bottomTileModel.title = "Taj Mahal";
  bottomTileModel.price = "\$399";
  bottomTileData.add(bottomTileModel);

  bottomTileModel = new BottomTileModel();

  //2
  bottomTileModel.imgPath = "assets/legomack.jpeg";
  bottomTileModel.title = "Mack";
  bottomTileModel.price = "\$229";
  bottomTileData.add(bottomTileModel);

  bottomTileModel = new BottomTileModel();

  //3
  bottomTileModel.imgPath = "assets/legofriends.jpg";
  bottomTileModel.title = "Central Perk";
  bottomTileModel.price = "\$179";
  bottomTileData.add(bottomTileModel);

  bottomTileModel = new BottomTileModel();

  //4
  bottomTileModel.imgPath = "assets/legoboeing.jpg";
  bottomTileModel.title = "Dreamliner";
  bottomTileModel.price = "\$329";
  bottomTileData.add(bottomTileModel);

  bottomTileModel = new BottomTileModel();

  //5
  bottomTileModel.imgPath = "assets/legoharley.jpeg";
  bottomTileModel.title = "Harley Davidson";
  bottomTileModel.price = "\$169";
  bottomTileData.add(bottomTileModel);

  bottomTileModel = new BottomTileModel();

//  //6
//  bottomTileModel.imgPath = "assets/legobugatti.jpg";
//  bottomTileModel.title = "Bugatti";
//  bottomTileModel.price = "\$299";
//  bottomTileData.add(bottomTileModel);
//
//  bottomTileModel = new BottomTileModel();

  return bottomTileData;
}
