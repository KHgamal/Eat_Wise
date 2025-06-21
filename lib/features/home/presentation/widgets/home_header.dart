import 'package:eat_wise/core/common/styles/text_style.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 25,
          backgroundColor: Colors.white,
        ),
        const SizedBox(width: 12,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("welcome...!" , style: Styles.textStyleBook14,),
            const SizedBox(height:5,),
            Text("User Name" , style: Styles.textStyleBook18,)
          ],
        ),
        const Spacer(),
         CircleAvatar(
          radius: 20,
          backgroundColor: Colors.white,
          child: IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_outlined , color: Colors.black87,)),
        ),
      ],
    );
  }
}