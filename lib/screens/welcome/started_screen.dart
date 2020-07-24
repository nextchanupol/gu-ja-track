import 'package:flutter/material.dart';
import 'package:learning_platform_app/models/slide_model.dart';
import 'package:learning_platform_app/utils/images_util.dart';
import 'package:learning_platform_app/utils/size_config.dart';
import 'package:learning_platform_app/utils/strings.dart';
import 'package:learning_platform_app/utils/styling.dart';
import 'package:learning_platform_app/widgets/slide_item.dart';

class StartedScreen extends StatelessWidget {
  final PageController _pageController = new PageController(initialPage: 0);

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
                      EdgeInsets.only(top: 4 * SizeConfig.heightMultiplier),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: PageView.builder(
                          scrollDirection: Axis.horizontal,
                          controller: _pageController,
                          itemCount: slideListArr.length,
                          itemBuilder: (context, index) => SlideItem(index),
                        ),
                      ),
                      SizedBox(height: 3 * SizeConfig.heightMultiplier),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5 * SizeConfig.heightMultiplier),
                            child: FlatButton(
                              onPressed: () {},
                              child: Text('Getting Started'),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)),
                              color: Theme.of(context).primaryColor,
                              padding: EdgeInsets.all(
                                  1.8 * SizeConfig.heightMultiplier),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Have an account ?',
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                              FlatButton(
                                onPressed: null,
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
}
