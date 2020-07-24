import 'dart:async';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/models/slide_model.dart';
import 'package:learning_platform_app/screens/login/login_screen.dart';
import 'package:learning_platform_app/utils/size_config.dart';
import 'package:learning_platform_app/widgets/slide_item.dart';
import 'package:learning_platform_app/widgets/slide_page_dots.dart';

class StartedScreen extends StatefulWidget {
  @override
  _StartedScreenState createState() => _StartedScreenState();
}

class _StartedScreenState extends State<StartedScreen> {
  int _currentPage = 0;
  final PageController _pageController = new PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 1 * SizeConfig.heightMultiplier),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: buildPageViewOnBoarding(),
                      ),
                      SizedBox(height: 3 * SizeConfig.heightMultiplier),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5 * SizeConfig.heightMultiplier),
                            child: buildGetStartedFlatButton(context),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Have an account ?',
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                              FlatButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed(LoginScreen.routeName);
                                },
                                child: Text('Login'),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Stack buildPageViewOnBoarding() {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: <Widget>[
        PageView.builder(
          scrollDirection: Axis.horizontal,
          controller: _pageController,
          onPageChanged: _onPageChanged,
          itemCount: slideListArr.length,
          itemBuilder: (context, index) => SlideItem(index),
        ),
        Stack(
          alignment: AlignmentDirectional.topStart,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: SizeConfig.heightMultiplier),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  for (int i = 0; i < slideListArr.length; i++)
                    if (i == _currentPage)
                      SlidePageDots(true)
                    else
                      SlidePageDots(false)
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  FlatButton buildGetStartedFlatButton(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      child: Text('Getting Started'),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.all(1.8 * SizeConfig.heightMultiplier),
    );
  }
}
