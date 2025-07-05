import 'package:flutter/material.dart';

import '../../../../core/common/styles/media.dart';

class WaterTrackBottomBar extends StatelessWidget {
  const WaterTrackBottomBar({super.key,required this.onIncrease, required this.onDecrease});
  final void Function()? onIncrease;
 final void Function()? onDecrease;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Image.asset(
              Assets.assetsImagesIncreaseWater,
            //  color: Colors.white,
            ),
            onPressed:  onIncrease,
          ),
          IconButton(
            icon: Image.asset(
              Assets.assetsImagesDecreaseWater,
             // color: Colors.white,
            ),
            onPressed: onDecrease,
          ),
          IconButton(
            icon: Image.asset(
              Assets.assetsImagesLineChart,
             // color: Colors.white,
              height: 24,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}