import 'package:learning_platform_app/utils/images_util.dart';
import 'package:learning_platform_app/utils/strings.dart';

class SlideModel {
  String imagePath;
  String title;
  String description;

  SlideModel({this.imagePath, this.title, this.description});

  void setImageAssetPath(String imagePath) {
    this.imagePath = imagePath;
  }

  void setTitle(String title) {
    this.title = title;
  }

  void setDescription(String description) {
    this.description = description;
  }

  String getImagePath() => this.imagePath;

  String getTitle() => this.title;

  String getDescription() => this.description;
}

final slideListArr = [
  new SlideModel(
    imagePath: ImagesUtil.homeImage,
    title: Strings.welcomeScreenTitle,
    description: Strings.welcomeScreenTitle,
  ),
  new SlideModel(
    imagePath: ImagesUtil.boating,
    title: Strings.welcomeScreenTitle,
    description: Strings.welcomeScreenTitle,
  ),
  new SlideModel(
    imagePath: ImagesUtil.cycling,
    title: Strings.welcomeScreenTitle,
    description: Strings.welcomeScreenTitle,
  ),
];

List<SlideModel> slideList() {
  List<SlideModel> onBoardings = new List<SlideModel>();
  SlideModel onBoardingModel = new SlideModel();

  onBoardingModel.setImageAssetPath(ImagesUtil.homeImage);
  onBoardingModel.setTitle(Strings.welcomeScreenTitle);
  onBoardingModel.setDescription(Strings.welcomeScreenTitle);
  onBoardings.add(onBoardingModel);

  onBoardingModel = new SlideModel();
  onBoardingModel.setImageAssetPath(ImagesUtil.boating);
  onBoardingModel.setTitle(Strings.welcomeScreenTitle);
  onBoardingModel.setDescription(Strings.welcomeScreenTitle);
  onBoardings.add(onBoardingModel);

  onBoardingModel = new SlideModel();
  onBoardingModel.setImageAssetPath(ImagesUtil.cycling);
  onBoardingModel.setTitle(Strings.welcomeScreenTitle);
  onBoardingModel.setDescription(Strings.welcomeScreenTitle);
  onBoardings.add(onBoardingModel);

  return onBoardings;
}
