import 'package:flutter/material.dart';
import 'package:learning_platform_app/models/slide_model.dart';
import 'package:learning_platform_app/utils/size_config.dart';

class SlideItem extends StatelessWidget {
  final int index;

  const SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(top: 1 * SizeConfig.heightMultiplier),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: FittedBox(
                    child: Text(
                      slideListArr[index].title,
                      style: Theme.of(context).textTheme.headline6,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 1 * SizeConfig.heightMultiplier),
              child: Container(
//                width: 100 * SizeConfig.imageSizeMultiplier,
//                height: 100 * SizeConfig.imageSizeMultiplier,
                decoration: BoxDecoration(
                  //shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(slideListArr[index].imagePath),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding:
                    EdgeInsets.only(bottom: 2 * SizeConfig.heightMultiplier),
                child: Text(
                  slideListArr[index].description,
                  style: Theme.of(context).textTheme.subtitle2,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
