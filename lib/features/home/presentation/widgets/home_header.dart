import 'package:eat_wise/core/common/styles/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/common/styles/colors_app.dart';
import '../../../user/presentation/Controller/bloc/user_bloc.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         CircleAvatar(
          radius: 25,
          backgroundColor:AppColors.msgContainer,
        ),
        const SizedBox(width: 12,),
        Row(
         // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("WELCOME," , style: Styles.textStyleBook18,),
            const SizedBox(height:5,),
            Text(context.read<UserBloc>().state.name ?? "Guest".toUpperCase() , style: Styles.textStyleBook18,)
          ],
        ),
        
      ],
    );
  }
}