import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NumberPickerCard extends StatelessWidget {
  final String label;
  final String unit;
  final int min;
  final int max;
  final int currentValue;
  final ValueChanged<int> onChanged;

  const NumberPickerCard({
    super.key,
    required this.label,
    required this.unit,
    required this.min,
    required this.max,
    required this.currentValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(16),
      ),
      height: 200,
      child: Column(
        children: [
          Text(
            "$label ($unit)",
            style: const TextStyle(fontSize: 18),
          ),
          Expanded(
            child: CupertinoPicker(
              itemExtent: 40,
              scrollController: FixedExtentScrollController(
                initialItem: currentValue - min,
              ),
              onSelectedItemChanged: (i) => onChanged(i + min),
              children: List.generate(
                max - min + 1,
                (i) => Center(
                  child: Text("${i + min}"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
