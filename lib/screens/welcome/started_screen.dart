import 'package:flutter/material.dart';
import 'package:learning_platform_app/utils/images_util.dart';
import 'package:learning_platform_app/utils/size_config.dart';
import 'package:learning_platform_app/utils/styling.dart';

class StartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Padding(
            padding:
                EdgeInsets.symmetric(vertical: 1 * SizeConfig.heightMultiplier),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: SizeConfig.imageSizeMultiplier * 50,
                        height: SizeConfig.imageSizeMultiplier * 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(ImagesUtil.homeImage),
                              fit: BoxFit.cover),
                        ),
                      ),
//                      SizedBox(height: 6 * SizeConfig.heightMultiplier),
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: 1 * SizeConfig.heightMultiplier),
                        child: Text(
                          'Title',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
//                      SizedBox(height: 1.5 * SizeConfig.heightMultiplier),
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: 0.5 * SizeConfig.heightMultiplier),
                        child: Text(
                          'Title',
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                      ),
                    ],
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
                        padding:
                            EdgeInsets.all(1.8 * SizeConfig.heightMultiplier),
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
    );
  }
}
