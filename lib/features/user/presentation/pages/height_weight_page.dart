import 'package:flutter/cupertino.dart';

import '../../../../core/common/widgets/continue_button.dart';
import '../widgets/number_picker_card.dart';

class HeightWeightPage extends StatefulWidget {
  final VoidCallback onContinue;

  const HeightWeightPage({super.key, required this.onContinue});

  @override
  State<HeightWeightPage> createState() => _HeightWeightPageState();
}

class _HeightWeightPageState extends State<HeightWeightPage> {
  int height = 170;
  int weight = 70;
DateTime date = DateTime(2000, 1, 1);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Height & Weight",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),

          Row(
            children: [
              Expanded(
                child: NumberPickerCard(
                  label: "Height",
                  unit: "cm",
                  min: 100,
                  max: 220,
                  currentValue: height,
                  onChanged: (v) => setState(() => height = v),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: NumberPickerCard(
                  label: "Weight",
                  unit: "kg",
                  min: 30,
                  max: 150,
                  currentValue: weight,
                  onChanged: (v) => setState(() => weight = v),
                ),
              ),
            ],
          ),

           const Spacer(),

          const Text(
            "When Were You Born ?",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 200,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              initialDateTime: date,
              maximumDate: DateTime.now(),
              minimumYear: 1950,
              onDateTimeChanged: (newDate) {
                date = newDate;
              },
            ),
          ),

          const Spacer(),

          ContinueButton(onContinue: widget.onContinue),
        ],
      ),
    );
  }
}
