import 'package:eat_wise/core/common/styles/media.dart';
import 'package:eat_wise/features/user/presentation/widgets/gender_container.dart';
import 'package:flutter/material.dart';

import '../../../../core/common/widgets/continue_button.dart';

class GenderPage extends StatefulWidget {
  final VoidCallback onContinue;
  const GenderPage({super.key, required this.onContinue});

  @override
  State<GenderPage> createState() => _GenderPageState();
}

class _GenderPageState extends State<GenderPage> {
  final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 22,),
           const Text(
            "Enter your name",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30,),
          //---------------------------------------logic----------------------------------------// 
          TextField(
            controller: nameController,
            decoration: const InputDecoration(labelText: 'full name'),
          ),
          const Spacer(
            flex: 2,
          ),
         const Text(
            "Choose Your Gender",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          //---------------------------------------logic----------------------------------------// 
          const Row(
            children: [
              Expanded(
                child: GenderContainer(
                    text: "Male",
                    icon: Assets.assetsImagesMale,
                    isActive: true),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: GenderContainer(
                    text: "Female",
                    icon: Assets.assetsImagesFemale,
                    isActive: false),
              ),
            ],
          ),
          const Spacer(
            flex: 2,
          ),
          ContinueButton(
            onContinue: widget.onContinue,
          ),
        ],
      ),
    );
  }
}
