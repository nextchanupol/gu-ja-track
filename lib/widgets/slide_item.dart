import 'package:flutter/material.dart';
import 'package:learning_platform_app/models/slide_model.dart';
import 'package:learning_platform_app/utils/size_config.dart';

class SlideItem extends StatelessWidget {
  final int index;

  const SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: SizeConfig.imageSizeMultiplier * 50,
          height: SizeConfig.imageSizeMultiplier * 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(slideListArr[index].imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 1 * SizeConfig.heightMultiplier),
          child: Text(
            slideListArr[index].title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 0.5 * SizeConfig.heightMultiplier),
          child: Text(
            slideListArr[index].description,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
      ],
    );
  }
}
