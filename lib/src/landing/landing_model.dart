class LandingModel {
  final String imagePath;
  final String title;
  final String subTitle;

  LandingModel(
      {required this.imagePath, required this.title, required this.subTitle});
}

List<LandingModel> boardingData = [
  LandingModel(
    imagePath: "assets/images/landing1.png",
    title: "Get food delivery to your doorstep asap",
    subTitle:
        "We have young and professional delivery team that will bring your food as soon possible to your doorstep",
  ),
  LandingModel(
    imagePath: 'assets/images/landing2.png',
    title: "Buy Any Food from your favorite restaurant",
    subTitle:
        "we are constantly adding your favourite restaurant throughout the territory and your area carefully selected",
  ),
  LandingModel(
    imagePath: 'assets/images/landing3.png',
    title: "Buy Any Food from your favorite restaurant",
    subTitle:
        "we are constantly adding your favourite restaurant throughout the territory and your area carefully selected",
  ),
];
