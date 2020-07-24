import 'package:learning_platform_app/utils/images_util.dart';
import 'package:learning_platform_app/utils/strings.dart';

class OnBoardingModel {
  String imagePath;
  String title;
  String description;

  OnBoardingModel({this.imagePath, this.title, this.description});

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

List<OnBoardingModel> getOnBoardings() {
  List<OnBoardingModel> onBoardings = new List<OnBoardingModel>();
  OnBoardingModel onBoardingModel = new OnBoardingModel();

  onBoardingModel.setImageAssetPath(ImagesUtil.homeImage);
  onBoardingModel.setTitle(Strings.welcomeScreenTitle);
  onBoardingModel.setDescription(Strings.welcomeScreenTitle);
  onBoardings.add(onBoardingModel);

  onBoardingModel = new OnBoardingModel();
  onBoardingModel.setImageAssetPath(ImagesUtil.boating);
  onBoardingModel.setTitle(Strings.welcomeScreenTitle);
  onBoardingModel.setDescription(Strings.welcomeScreenTitle);
  onBoardings.add(onBoardingModel);

  onBoardingModel = new OnBoardingModel();
  onBoardingModel.setImageAssetPath(ImagesUtil.cycling);
  onBoardingModel.setTitle(Strings.welcomeScreenTitle);
  onBoardingModel.setDescription(Strings.welcomeScreenTitle);
  onBoardings.add(onBoardingModel);
  
  return onBoardings;
}
