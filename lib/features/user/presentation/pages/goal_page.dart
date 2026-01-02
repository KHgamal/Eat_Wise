import 'package:eat_wise/core/constants/goal.dart';
import 'package:flutter/material.dart';

import '../../../../core/common/widgets/continue_button.dart';
import '../widgets/choice_container.dart';
import '../widgets/goal_item.dart';

class GoalPage extends StatefulWidget {
  final VoidCallback onContinue;
  const GoalPage({super.key, required this.onContinue});

  @override
  State<GoalPage> createState() => _GoalPageState();
}

class _GoalPageState extends State<GoalPage> {
    String goalSelected = "";
  final goals = GoalData.goals;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "What Is Your Goal ?",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height:50),
          Expanded(
            child: ListView.builder(
              itemCount: goals.length,
              itemBuilder: (context, index) {
                final item = goals[index];
                final isSelected = goalSelected == item["title"];

                return ChoiceContainer(
                  onTap: () => setState(() => goalSelected = item["title"]!),
                  isSelected: isSelected,
                  child: GoalItem(icon:  item["icon"]!,title:  item["title"]!,),
                );
              },
            ),
          ),

          ContinueButton(
              onContinue: goalSelected.isEmpty ? null : widget.onContinue)
        ],
      ),
    );
  }
}
