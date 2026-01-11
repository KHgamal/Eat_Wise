import 'package:eat_wise/core/common/widgets/bottom_nav_bar.dart';
import 'package:eat_wise/core/common/widgets/continue_button.dart';
import 'package:flutter/material.dart';

import '../../../../core/common/styles/media.dart';

class DoneIcon extends StatelessWidget {
  const DoneIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          const Spacer(flex: 2,),
          Image.asset(Assets.assetsImagesDone),
          const SizedBox(height: 16,),
           const Text(
                "It's All Set Now",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
               const SizedBox(height: 32,),
              const Text(
                " Your daily calorie needs are calculated and your meal plan is prepared."
                "Start logging your meals and stay on track",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              const SizedBox(height: 8,),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric( horizontal: 16.0),
            child: ContinueButton(onContinue: ()=>  Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const CustomBottomNavBar()),
              )),
          ),
             const Spacer(),
        ],
      ),
    );
  }
}