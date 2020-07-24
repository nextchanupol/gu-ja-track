import 'package:flutter/material.dart';
import 'package:learning_platform_app/screens/onboarding/onboarding_model.dart';
import 'package:learning_platform_app/utils/size_config.dart';
import 'package:learning_platform_app/utils/styling.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<OnBoardingModel> onBoardings = new List<OnBoardingModel>();
  PageController pageController = new PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    onBoardings = getOnBoardings();
  }

  Widget pageIndexIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? Colors.grey : Colors.grey[300],
        borderRadius: BorderRadius.circular(12.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          controller: pageController,
          onPageChanged: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          itemBuilder: (context, index) {
            return OnBoarding(
              imagePath: onBoardings[index].getImagePath(),
              title: onBoardings[index].getTitle(),
              description: onBoardings[index].getDescription(),
            );
          },
        ),
      ),
      bottomSheet: currentIndex != onBoardings.length - 1
          ? Container(
              constraints: BoxConstraints(
                  minHeight: 6.5 * SizeConfig.heightMultiplier,
                  maxHeight: 7.9 * SizeConfig.heightMultiplier),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(4 * SizeConfig.heightMultiplier),
                ),
//                color: AppTheme.topBarBackgroundColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      pageController.animateToPage(
                        onBoardings.length - 1,
                        duration: Duration(microseconds: 400),
                        curve: Curves.linear,
                      );
                    },
                    child: Text('SKIP'),
                  ),
                  Row(
                    children: <Widget>[
                      for (int i = 0; i < onBoardings.length; i++)
                        currentIndex == i
                            ? pageIndexIndicator(true)
                            : pageIndexIndicator(false)
                    ],
                  ),
                  FlatButton(
                    onPressed: () {
                      print("this is slideIndex: $currentIndex");
                      pageController.animateToPage(currentIndex + 1,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.linear);
                    },
                    splashColor: Colors.blue[50],
                    child: Text(
                      "NEXT",
                      style: TextStyle(
                          color: Color(0xFF0074E4),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            )
          : Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                constraints: BoxConstraints(
                    minHeight: 6.5 * SizeConfig.heightMultiplier,
                    maxHeight: 7.9 * SizeConfig.heightMultiplier),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(4 * SizeConfig.heightMultiplier),
                  ),
                  color: AppTheme.topBarBackgroundColor,
                ),
                child: Text(
                  "Get Started now",
                  style: Theme.of(context).textTheme.button,
                ),
              ),
            ),
    );
  }
}

class OnBoarding extends StatelessWidget {
  String imagePath, title, description;

  OnBoarding({this.imagePath, this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(imagePath),
          SizedBox(height: 20),
          Text(title),
          SizedBox(height: 20),
          Text(description),
        ],
      ),
    );
  }
}
