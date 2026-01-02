import 'package:eat_wise/core/common/widgets/continue_button.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/activity_levels.dart';
import '../widgets/choice_container.dart';
import '../widgets/level_item.dart';

class ActivityLevelPage extends StatefulWidget {
  final VoidCallback onContinue;

  const ActivityLevelPage({super.key, required this.onContinue});

  @override
  State<ActivityLevelPage> createState() => _ActivityLevelPageState();
}

class _ActivityLevelPageState extends State<ActivityLevelPage> {
  String levelSelected = "";
  final levels = ActivityLevelData.levels;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "What's your activity level?",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: ListView.builder(
              itemCount: levels.length,
              itemBuilder: (context, index) {
                final item = levels[index];
                final isSelected = levelSelected == item["title"];

                return ChoiceContainer(
                  onTap: () => setState(() => levelSelected = item["title"]!),
                  isSelected: isSelected,
                  child: LevelItem(desc: item["desc"]!,icon:  item["icon"]!,title:  item["title"]!,),
                );
              },
            ),
          ),
          ContinueButton(
              onContinue: levelSelected.isEmpty ? null : widget.onContinue)
        ],
      ),
    );
  }
}